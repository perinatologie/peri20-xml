<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901098
Name: Verwijsdetails
Description: Template voor verwijsdetails (Kernset Geboortezorg)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619">
   <title>Verwijsdetails</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]"
         id="d15e58714-false-d474782e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]) &gt;= 1">(Verwijsdetails233): element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]) &lt;= 1">(Verwijsdetails233): element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]"
         id="d15e58723-false-d475139e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@classCode) = ('ACT')">(Verwijsdetails233): de waarde van classCode MOET 'ACT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@moodCode) = ('EVN')">(Verwijsdetails233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Verwijsdetails233): attribuut @nullFlavor MOET datatype 'cs' hebben  - '<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']) &gt;= 1">(Verwijsdetails233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']) &lt;= 1">(Verwijsdetails233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:code[(@code = '3457005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Verwijsdetails233): element hl7:code[(@code = '3457005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:code[(@code = '3457005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Verwijsdetails233): element hl7:code[(@code = '3457005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Verwijsdetails233): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &lt;= 1">(Verwijsdetails233): element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &lt;= 1">(Verwijsdetails233): element hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT']) &lt;= 1">(Verwijsdetails233): element hl7:outboundRelationship[@typeCode='PERT'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:outboundRelationship[@typeCode='GEN']) &lt;= 1">(Verwijsdetails233): element hl7:outboundRelationship[@typeCode='GEN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']"
         id="d15e58735-false-d475261e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Verwijsdetails233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901098')">(Verwijsdetails233): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901098' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:code[(@code = '3457005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:code[(@code = '3457005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e58740-false-d475280e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Verwijsdetails233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="@nullFlavor or (@code='3457005' and @codeSystem='2.16.840.1.113883.6.96')">(Verwijsdetails233): de elementwaarde MOET een zijn van 'code '3457005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:effectiveTime
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:effectiveTime"
         id="d15e58746-false-d475300e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Verwijsdetails233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="not(*)">(Verwijsdetails233): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="@value">(Verwijsdetails233): attribute @value MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]"
         id="d15e58751-false-d475333e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@typeCode) = ('PRF')">(Verwijsdetails233): de waarde van typeCode MOET 'PRF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']) &gt;= 1">(Verwijsdetails233): element hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']) &lt;= 1">(Verwijsdetails233): element hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901045
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']
Item: (assignedEntity)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']"
         id="d475372e24-false-d475389e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="string(@classCode) = ('ASSIGNED')">(assignedEntity): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(assignedEntity): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]) &lt;= 1">(assignedEntity): element hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901045
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code]
Item: (assignedEntity)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d475372e28-false-d475435e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(assignedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(assignedEntity): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.218 Specialisme (2016-02-08T16:26:03)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(assignedEntity): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.218 Specialisme (2016-02-08T16:26:03).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901045
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]
Item: (assignedEntity)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]"
         id="d475372e33-false-d475471e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="string(@classCode) = ('ORG')">(assignedEntity): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="string(@determinerCode) = ('INSTANCE')">(assignedEntity): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &gt;= 1">(assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &lt;= 1">(assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]) &lt;= 1">(assignedEntity): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(assignedEntity): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']"
         id="d475554e7-false-d475562e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901047
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]
Item: (ZorginstellingId)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]"
         id="d475583e7-false-d475589e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2016-12-02T102921.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900021
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (ZorginstellingURA)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d475596e5-false-d475604e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingURA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(ZorginstellingURA): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="@extension">(ZorginstellingURA): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900610
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (ZorginstellingAGBID)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d475622e5-false-d475630e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(ZorginstellingAGBID): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="@extension">(ZorginstellingAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]"
         id="d15e58758-false-d475665e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@typeCode) = ('AUT')">(Verwijsdetails233): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']) &gt;= 1">(Verwijsdetails233): element hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']) &lt;= 1">(Verwijsdetails233): element hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901045
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']
Item: (assignedEntity)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']"
         id="d475704e24-false-d475721e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="string(@classCode) = ('ASSIGNED')">(assignedEntity): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(assignedEntity): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]) &lt;= 1">(assignedEntity): element hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901045
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code]
Item: (assignedEntity)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d475704e28-false-d475767e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(assignedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(assignedEntity): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.218 Specialisme (2016-02-08T16:26:03)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.218-2016-02-08T162603.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(assignedEntity): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.218 Specialisme (2016-02-08T16:26:03).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901045
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]
Item: (assignedEntity)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]"
         id="d475704e33-false-d475803e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="string(@classCode) = ('ORG')">(assignedEntity): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="string(@determinerCode) = ('INSTANCE')">(assignedEntity): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &gt;= 1">(assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &lt;= 1">(assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]) &lt;= 1">(assignedEntity): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(assignedEntity): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901045-2016-12-01T143523.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']"
         id="d475886e7-false-d475894e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901047
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]
Item: (ZorginstellingId)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]"
         id="d475915e7-false-d475921e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2016-12-02T102921.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900021
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (ZorginstellingURA)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d475928e5-false-d475936e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingURA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(ZorginstellingURA): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="@extension">(ZorginstellingURA): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900610
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (ZorginstellingAGBID)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:author[@typeCode = 'AUT'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED']/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d475954e5-false-d475962e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(ZorginstellingAGBID): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="@extension">(ZorginstellingAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']"
         id="d15e58765-false-d475984e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@typeCode) = ('RSON')">(Verwijsdetails233): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']] | hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901096']] | hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']] | hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']] | hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']] | hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']] | hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']] | hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']] | hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']] | hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="$elmcount &gt;= 1">(Verwijsdetails233): keuze (hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901096']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="$elmcount &lt;= 1">(Verwijsdetails233): keuze (hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901096']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]) &lt;= 1">(Verwijsdetails233): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901096']]) &lt;= 1">(Verwijsdetails233): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901096']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]) &lt;= 1">(Verwijsdetails233): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]) &lt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]) &lt;= 1">(Verwijsdetails233): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]) &lt;= 1">(Verwijsdetails233): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]) &lt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]) &lt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]) &lt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]) &lt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901097
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']
Item: (RedenVerw233)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]
Item: (RedenVerwAlgAn)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]"
         id="d476390e5-false-d476436e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@classCode) = ('CONTAINER')">(RedenVerwAlgAn): de waarde van classCode MOET 'CONTAINER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwAlgAn): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']) &gt;= 1">(RedenVerwAlgAn): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']) &lt;= 1">(RedenVerwAlgAn): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:code[(@code = '312850006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(RedenVerwAlgAn): element hl7:code[(@code = '312850006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:code[(@code = '312850006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(RedenVerwAlgAn): element hl7:code[(@code = '312850006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]) &lt;= 1">(RedenVerwAlgAn): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]) &lt;= 1">(RedenVerwAlgAn): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]) &lt;= 1">(RedenVerwAlgAn): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]) &lt;= 1">(RedenVerwAlgAn): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]) &lt;= 1">(RedenVerwAlgAn): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']
Item: (RedenVerwAlgAn)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']"
         id="d476390e35-false-d476626e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwAlgAn): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901048')">(RedenVerwAlgAn): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901048' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:code[(@code = '312850006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (RedenVerwAlgAn)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:code[(@code = '312850006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d476390e40-false-d476645e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwAlgAn): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="@nullFlavor or (@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')">(RedenVerwAlgAn): de elementwaarde MOET een zijn van 'code '312850006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900944
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]
Item: (Auto-immuunaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900944
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]
Item: (Auto-immuunaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="string(@classCode) = ('OBS')">(Auto-immuunaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="string(@moodCode) = ('EVN')">(Auto-immuunaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Auto-immuunaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Auto-immuunaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']) &gt;= 1">(Auto-immuunaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']) &lt;= 1">(Auto-immuunaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="count(hl7:code[(@code = '85828009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Auto-immuunaandoening): element hl7:code[(@code = '85828009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="count(hl7:code[(@code = '85828009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Auto-immuunaandoening): element hl7:code[(@code = '85828009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Auto-immuunaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900944
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']
Item: (Auto-immuunaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Auto-immuunaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900944')">(Auto-immuunaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900944' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900944
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]/hl7:code[(@code = '85828009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Auto-immuunaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]/hl7:code[(@code = '85828009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Auto-immuunaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="@nullFlavor or (@code='85828009' and @codeSystem='2.16.840.1.113883.6.96')">(Auto-immuunaandoening): de elementwaarde MOET een zijn van 'code '85828009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900944
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Auto-immuunaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900944']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Auto-immuunaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.28 Auto-immuun aandoening (2.2) (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.28-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Auto-immuunaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.28 Auto-immuun aandoening (2.2) (DYNAMISCH).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900944-2016-12-02T113937.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(Auto-immuunaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900945
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]
Item: (Cardiovasculaireaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900945
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]
Item: (Cardiovasculaireaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="string(@classCode) = ('OBS')">(Cardiovasculaireaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="string(@moodCode) = ('EVN')">(Cardiovasculaireaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Cardiovasculaireaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Cardiovasculaireaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']) &gt;= 1">(Cardiovasculaireaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']) &lt;= 1">(Cardiovasculaireaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="count(hl7:code[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Cardiovasculaireaandoening): element hl7:code[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="count(hl7:code[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Cardiovasculaireaandoening): element hl7:code[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Cardiovasculaireaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900945
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']
Item: (Cardiovasculaireaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Cardiovasculaireaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900945')">(Cardiovasculaireaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900945' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900945
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]/hl7:code[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Cardiovasculaireaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]/hl7:code[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Cardiovasculaireaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="@nullFlavor or (@code='49601007' and @codeSystem='2.16.840.1.113883.6.96')">(Cardiovasculaireaandoening): de elementwaarde MOET een zijn van 'code '49601007' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900945
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Cardiovasculaireaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900945']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Cardiovasculaireaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.11 Cardiovasculaire aandoeningen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Cardiovasculaireaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.11 Cardiovasculaire aandoeningen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900945-2016-12-02T114347.html"
              test="@xsi:type">(Cardiovasculaireaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900946
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]
Item: (Urogenitaleaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900946
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]
Item: (Urogenitaleaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="string(@classCode) = ('OBS')">(Urogenitaleaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="string(@moodCode) = ('EVN')">(Urogenitaleaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Urogenitaleaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Urogenitaleaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']) &gt;= 1">(Urogenitaleaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']) &lt;= 1">(Urogenitaleaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="count(hl7:code[(@code = '42030000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Urogenitaleaandoening): element hl7:code[(@code = '42030000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="count(hl7:code[(@code = '42030000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Urogenitaleaandoening): element hl7:code[(@code = '42030000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Urogenitaleaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900946
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']
Item: (Urogenitaleaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urogenitaleaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900946')">(Urogenitaleaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900946' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900946
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]/hl7:code[(@code = '42030000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Urogenitaleaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]/hl7:code[(@code = '42030000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Urogenitaleaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="@nullFlavor or (@code='42030000' and @codeSystem='2.16.840.1.113883.6.96')">(Urogenitaleaandoening): de elementwaarde MOET een zijn van 'code '42030000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900946
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Urogenitaleaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900946']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.30-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.30-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Urogenitaleaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.30 Urogenitale aandoening (2.2) (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900946-2016-12-02T114612.html"
              test="@xsi:type">(Urogenitaleaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900948
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]
Item: (Oncologischeaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900948
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]
Item: (Oncologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="string(@classCode) = ('OBS')">(Oncologischeaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="string(@moodCode) = ('EVN')">(Oncologischeaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Oncologischeaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Oncologischeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']) &gt;= 1">(Oncologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']) &lt;= 1">(Oncologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="count(hl7:code[(@code = '363346000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Oncologischeaandoening): element hl7:code[(@code = '363346000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="count(hl7:code[(@code = '363346000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Oncologischeaandoening): element hl7:code[(@code = '363346000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Oncologischeaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900948
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']
Item: (Oncologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Oncologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900948')">(Oncologischeaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900948' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900948
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]/hl7:code[(@code = '363346000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Oncologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]/hl7:code[(@code = '363346000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Oncologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="@nullFlavor or (@code='363346000' and @codeSystem='2.16.840.1.113883.6.96')">(Oncologischeaandoening): de elementwaarde MOET een zijn van 'code '363346000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900948
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Oncologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900948']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Oncologischeaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.27 Oncologische aandoening (2.2) (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.27-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Oncologischeaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.27 Oncologische aandoening (2.2) (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900948-2016-12-02T114951.html"
              test="@xsi:type">(Oncologischeaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900947
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]
Item: (Schildklieraandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900947
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]
Item: (Schildklieraandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="string(@classCode) = ('OBS')">(Schildklieraandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="string(@moodCode) = ('EVN')">(Schildklieraandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Schildklieraandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Schildklieraandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']) &gt;= 1">(Schildklieraandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']) &lt;= 1">(Schildklieraandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="count(hl7:code[(@code = '14304000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Schildklieraandoening): element hl7:code[(@code = '14304000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="count(hl7:code[(@code = '14304000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Schildklieraandoening): element hl7:code[(@code = '14304000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Schildklieraandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900947
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']
Item: (Schildklieraandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Schildklieraandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900947')">(Schildklieraandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900947' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900947
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]/hl7:code[(@code = '14304000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Schildklieraandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]/hl7:code[(@code = '14304000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Schildklieraandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="@nullFlavor or (@code='14304000' and @codeSystem='2.16.840.1.113883.6.96')">(Schildklieraandoening): de elementwaarde MOET een zijn van 'code '14304000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900947
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Schildklieraandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900947']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.13-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Schildklieraandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.13 Schildklieraandoeningen (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900947-2016-12-02T115136.html"
              test="@xsi:type">(Schildklieraandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]
Item: (DiabetesMellitus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]
Item: (DiabetesMellitus)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="string(@classCode) = ('OBS')">(DiabetesMellitus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="string(@moodCode) = ('EVN')">(DiabetesMellitus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']) &gt;= 1">(DiabetesMellitus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']) &lt;= 1">(DiabetesMellitus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:code[(@code = '73211009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(DiabetesMellitus): element hl7:code[(@code = '73211009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:code[(@code = '73211009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(DiabetesMellitus): element hl7:code[(@code = '73211009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(DiabetesMellitus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(DiabetesMellitus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']
Item: (DiabetesMellitus)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DiabetesMellitus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900936')">(DiabetesMellitus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900936' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:code[(@code = '73211009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (DiabetesMellitus)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:code[(@code = '73211009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DiabetesMellitus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="@nullFlavor or (@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')">(DiabetesMellitus): de elementwaarde MOET een zijn van 'code '73211009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (DiabetesMellitus)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="@xsi:type">(DiabetesMellitus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900949
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]
Item: (Neurologischeaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900949
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]
Item: (Neurologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="string(@classCode) = ('OBS')">(Neurologischeaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="string(@moodCode) = ('EVN')">(Neurologischeaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Neurologischeaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Neurologischeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']) &gt;= 1">(Neurologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']) &lt;= 1">(Neurologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="count(hl7:code[(@code = '118940003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Neurologischeaandoening): element hl7:code[(@code = '118940003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="count(hl7:code[(@code = '118940003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Neurologischeaandoening): element hl7:code[(@code = '118940003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Neurologischeaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900949
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']
Item: (Neurologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Neurologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900949')">(Neurologischeaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900949' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900949
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]/hl7:code[(@code = '118940003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Neurologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]/hl7:code[(@code = '118940003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Neurologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="@nullFlavor or (@code='118940003' and @codeSystem='2.16.840.1.113883.6.96')">(Neurologischeaandoening): de elementwaarde MOET een zijn van 'code '118940003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900949
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Neurologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900949']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Neurologischeaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.14 Neurologische aandoeningen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Neurologischeaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.14 Neurologische aandoeningen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900949-2016-12-02T115419.html"
              test="@xsi:type">(Neurologischeaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900950
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]
Item: (Infectieziekte)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900950
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]
Item: (Infectieziekte)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="string(@classCode) = ('OBS')">(Infectieziekte): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="string(@moodCode) = ('EVN')">(Infectieziekte): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Infectieziekte): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Infectieziekte): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']) &gt;= 1">(Infectieziekte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']) &lt;= 1">(Infectieziekte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="count(hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Infectieziekte): element hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="count(hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Infectieziekte): element hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Infectieziekte): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900950
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']
Item: (Infectieziekte)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Infectieziekte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900950')">(Infectieziekte): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900950' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900950
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]/hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Infectieziekte)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]/hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Infectieziekte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="@nullFlavor or (@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')">(Infectieziekte): de elementwaarde MOET een zijn van 'code '40733004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900950
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Infectieziekte)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Infectieziekte): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.15 Infectieziekten (2014-08-14T13:43:41)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.15-2014-08-14T134341.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Infectieziekte): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.15 Infectieziekten (2014-08-14T13:43:41).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900950-2016-12-02T115613.html"
              test="@xsi:type">(Infectieziekte): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900951
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]
Item: (MDLaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900951
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]
Item: (MDLaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="string(@classCode) = ('OBS')">(MDLaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="string(@moodCode) = ('EVN')">(MDLaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(MDLaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(MDLaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']) &gt;= 1">(MDLaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']) &lt;= 1">(MDLaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="count(hl7:code[(@code = '53619000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MDLaandoening): element hl7:code[(@code = '53619000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="count(hl7:code[(@code = '53619000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MDLaandoening): element hl7:code[(@code = '53619000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.29-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MDLaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.29-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900951
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']
Item: (MDLaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MDLaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900951')">(MDLaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900951' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900951
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]/hl7:code[(@code = '53619000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MDLaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]/hl7:code[(@code = '53619000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MDLaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="@nullFlavor or (@code='53619000' and @codeSystem='2.16.840.1.113883.6.96')">(MDLaandoening): de elementwaarde MOET een zijn van 'code '53619000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900951
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.29-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MDLaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900951']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.29-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.29-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MDLaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.29 Maag Darm Lever aandoening (2.2) (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900951-2016-12-02T115814.html"
              test="@xsi:type">(MDLaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900952
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]
Item: (Anemie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900952
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]
Item: (Anemie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="string(@classCode) = ('OBS')">(Anemie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="string(@moodCode) = ('EVN')">(Anemie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Anemie): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Anemie): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']) &gt;= 1">(Anemie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']) &lt;= 1">(Anemie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="count(hl7:code[(@code = '271737000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Anemie): element hl7:code[(@code = '271737000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="count(hl7:code[(@code = '271737000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Anemie): element hl7:code[(@code = '271737000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Anemie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900952
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']
Item: (Anemie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Anemie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900952')">(Anemie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900952' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900952
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]/hl7:code[(@code = '271737000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Anemie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]/hl7:code[(@code = '271737000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Anemie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="@nullFlavor or (@code='271737000' and @codeSystem='2.16.840.1.113883.6.96')">(Anemie): de elementwaarde MOET een zijn van 'code '271737000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900952
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Anemie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900952']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.31-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.31-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Anemie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.31 Anemie (2.2) (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900952-2016-12-02T115941.html"
              test="@xsi:type">(Anemie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900953
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]
Item: (Longaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900953
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]
Item: (Longaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="string(@classCode) = ('OBS')">(Longaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="string(@moodCode) = ('EVN')">(Longaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Longaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Longaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']) &gt;= 1">(Longaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']) &lt;= 1">(Longaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="count(hl7:code[(@code = '50043002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Longaandoening): element hl7:code[(@code = '50043002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="count(hl7:code[(@code = '50043002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Longaandoening): element hl7:code[(@code = '50043002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Longaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900953
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']
Item: (Longaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Longaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900953')">(Longaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900953' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900953
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]/hl7:code[(@code = '50043002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Longaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]/hl7:code[(@code = '50043002' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Longaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="@nullFlavor or (@code='50043002' and @codeSystem='2.16.840.1.113883.6.96')">(Longaandoening): de elementwaarde MOET een zijn van 'code '50043002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900953
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Longaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900953']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Longaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.205 Longaandoening (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.205-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Longaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.205 Longaandoening (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900953-2016-12-02T120109.html"
              test="@xsi:type">(Longaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (Gynaecologischeaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@classCode) = ('OBS')">(Gynaecologischeaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@moodCode) = ('EVN')">(Gynaecologischeaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Gynaecologischeaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Gynaecologischeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']) &gt;= 1">(Gynaecologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']) &lt;= 1">(Gynaecologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Gynaecologischeaandoening): element hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Gynaecologischeaandoening): element hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Gynaecologischeaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Gynaecologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900954')">(Gynaecologischeaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900954' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Gynaecologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or (@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van 'code '310789003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Gynaecologischeaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@xsi:type">(Gynaecologischeaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900955
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]
Item: (Orthopedischeafwijking)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900955
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]
Item: (Orthopedischeafwijking)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="string(@classCode) = ('OBS')">(Orthopedischeafwijking): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="string(@moodCode) = ('EVN')">(Orthopedischeafwijking): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Orthopedischeafwijking): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Orthopedischeafwijking): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']) &gt;= 1">(Orthopedischeafwijking): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']) &lt;= 1">(Orthopedischeafwijking): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="count(hl7:code[(@code = '928000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Orthopedischeafwijking): element hl7:code[(@code = '928000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="count(hl7:code[(@code = '928000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Orthopedischeafwijking): element hl7:code[(@code = '928000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Orthopedischeafwijking): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900955
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']
Item: (Orthopedischeafwijking)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Orthopedischeafwijking): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900955')">(Orthopedischeafwijking): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900955' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900955
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]/hl7:code[(@code = '928000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Orthopedischeafwijking)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]/hl7:code[(@code = '928000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Orthopedischeafwijking): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="@nullFlavor or (@code='928000' and @codeSystem='2.16.840.1.113883.6.96')">(Orthopedischeafwijking): de elementwaarde MOET een zijn van 'code '928000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900955
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Orthopedischeafwijking)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900955']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Orthopedischeafwijking): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.17 Orthopedische afwijkingen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Orthopedischeafwijking): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.17 Orthopedische afwijkingen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900955-2016-12-02T123811.html"
              test="@xsi:type">(Orthopedischeafwijking): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900158
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]
Item: (Bloedtransfusie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900158
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]
Item: (Bloedtransfusie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="string(@classCode) = ('OBS')">(Bloedtransfusie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="string(@moodCode) = ('EVN')">(Bloedtransfusie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']) &gt;= 1">(Bloedtransfusie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']) &lt;= 1">(Bloedtransfusie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="count(hl7:code[(@code = '116859006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Bloedtransfusie): element hl7:code[(@code = '116859006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="count(hl7:code[(@code = '116859006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Bloedtransfusie): element hl7:code[(@code = '116859006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Bloedtransfusie): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Bloedtransfusie): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900158
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']
Item: (Bloedtransfusie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloedtransfusie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900158')">(Bloedtransfusie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900158' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900158
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]/hl7:code[(@code = '116859006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Bloedtransfusie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]/hl7:code[(@code = '116859006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Bloedtransfusie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="@nullFlavor or (@code='116859006' and @codeSystem='2.16.840.1.113883.6.96')">(Bloedtransfusie): de elementwaarde MOET een zijn van 'code '116859006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900158
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Bloedtransfusie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900158']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="@xsi:type">(Bloedtransfusie): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900158-2016-12-02T132925.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Bloedtransfusie): attribuut @nullFlavor MOET datatype 'cs' hebben  - '<value-of select="@nullFlavor"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="../hl7:component/hl7:observation[hl7:code/@code='116859006']/hl7:value/@value='true'">(RedenVerwAlgAn): Transfusiereactie alleen opnemen wanneer er sprake is (geweest) van een Bloedtransfusie.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901024
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]
Item: (Transfusiereactie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901024
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]
Item: (Transfusiereactie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="string(@classCode) = ('OBS')">(Transfusiereactie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="string(@moodCode) = ('EVN')">(Transfusiereactie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="string(@negationInd) = ('false') or not(@negationInd)">(Transfusiereactie): de waarde van negationInd MOET 'false' zijn. Gevonden: "<value-of select="@negationInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="(@nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Transfusiereactie): Er moet ofwel een nullFlavor, ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze twee. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']) &gt;= 1">(Transfusiereactie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']) &lt;= 1">(Transfusiereactie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="count(hl7:code[(@code = '82545002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Transfusiereactie): element hl7:code[(@code = '82545002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="count(hl7:code[(@code = '82545002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Transfusiereactie): element hl7:code[(@code = '82545002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Transfusiereactie): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Transfusiereactie): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901024
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']
Item: (Transfusiereactie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transfusiereactie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901024')">(Transfusiereactie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901024' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901024
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]/hl7:code[(@code = '82545002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Transfusiereactie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]/hl7:code[(@code = '82545002' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Transfusiereactie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="@nullFlavor or (@code='82545002' and @codeSystem='2.16.840.1.113883.6.96')">(Transfusiereactie): de elementwaarde MOET een zijn van 'code '82545002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901024
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Transfusiereactie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901024']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901024-2016-12-02T133114.html"
              test="@xsi:type">(Transfusiereactie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900956
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]
Item: (Typeoperatie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900956
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]
Item: (Typeoperatie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="string(@classCode) = ('OBS')">(Typeoperatie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="string(@moodCode) = ('EVN')">(Typeoperatie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Typeoperatie): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Typeoperatie): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']) &gt;= 1">(Typeoperatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']) &lt;= 1">(Typeoperatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="count(hl7:code[(@code = '387713003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Typeoperatie): element hl7:code[(@code = '387713003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="count(hl7:code[(@code = '387713003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Typeoperatie): element hl7:code[(@code = '387713003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Typeoperatie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900956
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']
Item: (Typeoperatie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typeoperatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900956')">(Typeoperatie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900956' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900956
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]/hl7:code[(@code = '387713003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Typeoperatie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]/hl7:code[(@code = '387713003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typeoperatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="@nullFlavor or (@code='387713003' and @codeSystem='2.16.840.1.113883.6.96')">(Typeoperatie): de elementwaarde MOET een zijn van 'code '387713003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900956
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Typeoperatie)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900956']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Typeoperatie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.18 Type operatie (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Typeoperatie): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.18 Type operatie (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900956-2016-12-02T124735.html"
              test="@xsi:type">(Typeoperatie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900957
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]
Item: (Typestollingsprobleem)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900957
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]
Item: (Typestollingsprobleem)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="string(@classCode) = ('OBS')">(Typestollingsprobleem): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="string(@moodCode) = ('EVN')">(Typestollingsprobleem): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Typestollingsprobleem): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Typestollingsprobleem): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']) &gt;= 1">(Typestollingsprobleem): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']) &lt;= 1">(Typestollingsprobleem): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="count(hl7:code[(@code = '64779008' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Typestollingsprobleem): element hl7:code[(@code = '64779008' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="count(hl7:code[(@code = '64779008' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Typestollingsprobleem): element hl7:code[(@code = '64779008' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Typestollingsprobleem): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900957
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']
Item: (Typestollingsprobleem)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typestollingsprobleem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900957')">(Typestollingsprobleem): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900957' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900957
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]/hl7:code[(@code = '64779008' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Typestollingsprobleem)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]/hl7:code[(@code = '64779008' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Typestollingsprobleem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="@nullFlavor or (@code='64779008' and @codeSystem='2.16.840.1.113883.6.96')">(Typestollingsprobleem): de elementwaarde MOET een zijn van 'code '64779008' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900957
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Typestollingsprobleem)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900957']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Typestollingsprobleem): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.19 Type stollingsprobleem (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Typestollingsprobleem): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.19 Type stollingsprobleem (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900957-2016-12-02T124918.html"
              test="@xsi:type">(Typestollingsprobleem): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901026
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]
Item: (PsychiatriePRN)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901026
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]
Item: (PsychiatriePRN)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="string(@classCode) = ('OBS')">(PsychiatriePRN): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="string(@moodCode) = ('EVN')">(PsychiatriePRN): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(PsychiatriePRN): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="not(@nullFlavor and @negationInd='true')">(PsychiatriePRN): Er mag ofwel een nullFlavor, ofwel een negationInd (true) zijn, maar niet meer dan een van deze beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']) &gt;= 1">(PsychiatriePRN): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']) &lt;= 1">(PsychiatriePRN): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="count(hl7:code[(@code = '74732009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PsychiatriePRN): element hl7:code[(@code = '74732009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="count(hl7:code[(@code = '74732009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PsychiatriePRN): element hl7:code[(@code = '74732009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901026
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']
Item: (PsychiatriePRN)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PsychiatriePRN): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901026')">(PsychiatriePRN): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901026' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901026
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]/hl7:code[(@code = '74732009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PsychiatriePRN)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901026']]/hl7:code[(@code = '74732009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PsychiatriePRN): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901026-2016-12-02T133709.html"
              test="@nullFlavor or (@code='74732009' and @codeSystem='2.16.840.1.113883.6.96')">(PsychiatriePRN): de elementwaarde MOET een zijn van 'code '74732009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901048
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]
Item: (RedenVerwAlgAn)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwAlgAn): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901048-2016-12-02T111820.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwAlgAn): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900960
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]
Item: (Overigeaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900960
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]
Item: (Overigeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="string(@classCode) = ('OBS')">(Overigeaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="string(@moodCode) = ('EVN')">(Overigeaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Overigeaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="not(hl7:text and @negationInd='true') and not(hl7:text and @nullFlavor) and not(@nullFlavor and @negationInd)">(Overigeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:text aanwezig zijn, maar niet meer dan een van deze drie. In de Kernset Geboortezorg mag deze observatie ook zonder text meegegeven worden.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']) &gt;= 1">(Overigeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']) &lt;= 1">(Overigeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="count(hl7:code[(@code = 'OverigeAandoeningenAnamnese' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Overigeaandoening): element hl7:code[(@code = 'OverigeAandoeningenAnamnese' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="count(hl7:code[(@code = 'OverigeAandoeningenAnamnese' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Overigeaandoening): element hl7:code[(@code = 'OverigeAandoeningenAnamnese' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="count(hl7:text) &lt;= 1">(Overigeaandoening): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900960
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']
Item: (Overigeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Overigeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900960')">(Overigeaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900960' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900960
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]/hl7:code[(@code = 'OverigeAandoeningenAnamnese' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Overigeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]/hl7:code[(@code = 'OverigeAandoeningenAnamnese' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Overigeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="@nullFlavor or (@code='OverigeAandoeningenAnamnese' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Overigeaandoening): de elementwaarde MOET een zijn van 'code 'OverigeAandoeningenAnamnese' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900960
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]/hl7:text
Item: (Overigeaandoening)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901048']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900960']]/hl7:text">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900960-2016-12-02T134046.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Overigeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901055
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]
Item: (EindeZwangerschapRedenVerw)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]"
         id="d479973e7-false-d479981e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="string(@classCode) = ('OBS')">(EindeZwangerschapRedenVerw): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="string(@moodCode) = ('EVN')">(EindeZwangerschapRedenVerw): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']) &gt;= 1">(EindeZwangerschapRedenVerw): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']) &lt;= 1">(EindeZwangerschapRedenVerw): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="count(hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EindeZwangerschapRedenVerw): element hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="count(hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EindeZwangerschapRedenVerw): element hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(EindeZwangerschapRedenVerw): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(EindeZwangerschapRedenVerw): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901055
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']
Item: (EindeZwangerschapRedenVerw)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']"
         id="d479973e25-false-d480049e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EindeZwangerschapRedenVerw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901055')">(EindeZwangerschapRedenVerw): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901055' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901055
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]/hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EindeZwangerschapRedenVerw)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]/hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]"
         id="d479973e30-false-d480068e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EindeZwangerschapRedenVerw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="@nullFlavor or (@code='EindeZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EindeZwangerschapRedenVerw): de elementwaarde MOET een zijn van 'code 'EindeZw' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901055
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EindeZwangerschapRedenVerw)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901055']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d479973e42-false-d480091e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EindeZwangerschapRedenVerw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(EindeZwangerschapRedenVerw): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.219 Einde Zwangerschap (verwijsreden) (2016-11-22T10:36:57)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.219-2016-11-22T103657.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901055-2016-12-02T170207.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(EindeZwangerschapRedenVerw): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.219 Einde Zwangerschap (verwijsreden) (2016-11-22T10:36:57).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900983
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]
Item: (PostnataleFase)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]"
         id="d480114e22-false-d480124e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="string(@classCode) = ('CONTAINER')">(PostnataleFase): de waarde van classCode MOET 'CONTAINER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="string(@moodCode) = ('EVN')">(PostnataleFase): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']) &gt;= 1">(PostnataleFase): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']) &lt;= 1">(PostnataleFase): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="count(hl7:code[(@code = '133906008' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PostnataleFase): element hl7:code[(@code = '133906008' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="count(hl7:code[(@code = '133906008' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PostnataleFase): element hl7:code[(@code = '133906008' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900983
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']
Item: (PostnataleFase)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']"
         id="d480114e31-false-d480177e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PostnataleFase): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900983')">(PostnataleFase): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900983' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900983
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:code[(@code = '133906008' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PostnataleFase)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:code[(@code = '133906008' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d480114e36-false-d480196e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PostnataleFase): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="@nullFlavor or (@code='133906008' and @codeSystem='2.16.840.1.113883.6.96')">(PostnataleFase): de elementwaarde MOET een zijn van 'code '133906008' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900983
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']
Item: (PostnataleFase)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']">
      <extends rule="d480235e0-false-d480241e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="string(@typeCode) = ('COMP')">(PostnataleFase): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900983-2016-12-02T180940.html"
              test="string(@contextConductionInd) = ('true')">(PostnataleFase): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900984
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']
Item: (PathologieVrouw)
-->
   <rule id="d480235e0-false-d480241e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]) &lt;= 1">(PathologieVrouw): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900984
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]
Item: (PathologieVrouw)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="string(@classCode) = ('OBS')">(PathologieVrouw): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="string(@moodCode) = ('EVN')">(PathologieVrouw): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(PathologieVrouw): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('UNK','NI')))])">(PathologieVrouw): de waarde van nullFlavor MOET 'code UNK of code NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(PathologieVrouw): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(../../hl7:component/hl7:observation/hl7:code[@code='362973001'])=1 or @negationInd='false'">(PathologieVrouw): Als er meer dan één observatie is over pathologie vrouw, moet er ook sprake zijn van pathologie bij die vrouw (negationInd moet dan in alle gevallen false zijn). </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']) &gt;= 1">(PathologieVrouw): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']) &lt;= 1">(PathologieVrouw): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:code[(@code = '362973001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PathologieVrouw): element hl7:code[(@code = '362973001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:code[(@code = '362973001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PathologieVrouw): element hl7:code[(@code = '362973001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:effectiveTime) &lt;= 1">(PathologieVrouw): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(PathologieVrouw): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900984
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']
Item: (PathologieVrouw)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PathologieVrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900984')">(PathologieVrouw): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900984' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900984
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:code[(@code = '362973001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PathologieVrouw)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:code[(@code = '362973001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PathologieVrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="@nullFlavor or (@code='362973001' and @codeSystem='2.16.840.1.113883.6.96')">(PathologieVrouw): de elementwaarde MOET een zijn van 'code '362973001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900984
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:effectiveTime
Item: (PathologieVrouw)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:effectiveTime">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PathologieVrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="not(*)">(PathologieVrouw): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900984
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PathologieVrouw)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900983']]/hl7:component[hl7:observation/hl7:code/@code='362973001']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900984']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PathologieVrouw): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.34 Postpartum complicatie (2016-11-24T13:06:58)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.34-2016-11-24T130658.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PathologieVrouw): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.34 Postpartum complicatie (2016-11-24T13:06:58).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900984-2016-12-02T194808.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(PathologieVrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901058
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]
Item: (RedenVerwOverig)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]"
         id="d480435e7-false-d480443e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="string(@classCode) = ('OBS')">(RedenVerwOverig): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwOverig): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(RedenVerwOverig): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="(@negationInd='true' or @nullFlavor or hl7:text) and not(hl7:text and @negationInd='true') and not(hl7:text and @nullFlavor) and not(@nullFlavor and @negationInd)">(RedenVerwOverig): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:text aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']) &gt;= 1">(RedenVerwOverig): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']) &lt;= 1">(RedenVerwOverig): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="count(hl7:code[(@code = '9999' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.2.1')]) &gt;= 1">(RedenVerwOverig): element hl7:code[(@code = '9999' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.2.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="count(hl7:code[(@code = '9999' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.2.1')]) &lt;= 1">(RedenVerwOverig): element hl7:code[(@code = '9999' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.2.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="count(hl7:text) &lt;= 1">(RedenVerwOverig): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901058
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']
Item: (RedenVerwOverig)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']"
         id="d480435e25-false-d480509e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwOverig): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901058')">(RedenVerwOverig): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901058' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901058
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]/hl7:code[(@code = '9999' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.2.1')]
Item: (RedenVerwOverig)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]/hl7:code[(@code = '9999' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.2.1')]"
         id="d480435e31-false-d480528e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwOverig): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="@nullFlavor or (@code='9999' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.2.1')">(RedenVerwOverig): de elementwaarde MOET een zijn van 'code '9999' codeSystem '2.16.840.1.113883.2.4.3.22.1.2.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901058
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]/hl7:text
Item: (RedenVerwOverig)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901058']]/hl7:text"
         id="d480435e36-false-d480548e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901058-2016-12-02T183205.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwOverig): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901060
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]
Item: (RedenVerwijzing2to3)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]"
         id="d480555e19-false-d480563e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="string(@classCode) = ('OBS')">(RedenVerwijzing2to3): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwijzing2to3): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']) &gt;= 1">(RedenVerwijzing2to3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']) &lt;= 1">(RedenVerwijzing2to3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="count(hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]) &gt;= 1">(RedenVerwijzing2to3): element hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="count(hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]) &lt;= 1">(RedenVerwijzing2to3): element hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="count(hl7:text) &lt;= 1">(RedenVerwijzing2to3): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901060
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']
Item: (RedenVerwijzing2to3)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']"
         id="d480555e25-false-d480623e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901060')">(RedenVerwijzing2to3): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901060' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901060
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]/hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]
Item: (RedenVerwijzing2to3)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]/hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]"
         id="d480555e30-false-d480642e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="@nullFlavor or (@code='2' and @codeSystem='2.16.840.1.113883.2.4.4.13.10')">(RedenVerwijzing2to3): de elementwaarde MOET een zijn van 'code '2' codeSystem '2.16.840.1.113883.2.4.4.13.10''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901060
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]/hl7:text
Item: (RedenVerwijzing2to3)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901060']]/hl7:text"
         id="d480555e35-false-d480662e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901060-2016-12-03T172345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901061
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]
Item: (RedenVerwijzing2to1)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]"
         id="d480669e19-false-d480677e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="string(@classCode) = ('OBS')">(RedenVerwijzing2to1): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwijzing2to1): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']) &gt;= 1">(RedenVerwijzing2to1): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']) &lt;= 1">(RedenVerwijzing2to1): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="count(hl7:code[(@code = '3' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]) &gt;= 1">(RedenVerwijzing2to1): element hl7:code[(@code = '3' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="count(hl7:code[(@code = '3' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]) &lt;= 1">(RedenVerwijzing2to1): element hl7:code[(@code = '3' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(RedenVerwijzing2to1): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="count(hl7:text) &lt;= 1">(RedenVerwijzing2to1): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901061
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']
Item: (RedenVerwijzing2to1)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']"
         id="d480669e25-false-d480748e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901061')">(RedenVerwijzing2to1): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901061' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901061
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:code[(@code = '3' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]
Item: (RedenVerwijzing2to1)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:code[(@code = '3' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]"
         id="d480669e30-false-d480767e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="@nullFlavor or (@code='3' and @codeSystem='2.16.840.1.113883.2.4.4.13.10')">(RedenVerwijzing2to1): de elementwaarde MOET een zijn van 'code '3' codeSystem '2.16.840.1.113883.2.4.4.13.10''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901061
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code]
Item: (RedenVerwijzing2to1)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d480669e35-false-d480789e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(RedenVerwijzing2to1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.224 Reden Verwijzing (2e naar 1e lijn) (2016-11-22T11:21:07)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.224-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(RedenVerwijzing2to1): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.224 Reden Verwijzing (2e naar 1e lijn) (2016-11-22T11:21:07).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901061
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:text
Item: (RedenVerwijzing2to1)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901061']]/hl7:text"
         id="d480669e41-false-d480816e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901061-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing2to1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901062
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]
Item: (RedenVerwijzing3to2)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]"
         id="d480823e19-false-d480831e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="string(@classCode) = ('OBS')">(RedenVerwijzing3to2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwijzing3to2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']) &gt;= 1">(RedenVerwijzing3to2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']) &lt;= 1">(RedenVerwijzing3to2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="count(hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]) &gt;= 1">(RedenVerwijzing3to2): element hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="count(hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]) &lt;= 1">(RedenVerwijzing3to2): element hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(RedenVerwijzing3to2): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="count(hl7:text) &lt;= 1">(RedenVerwijzing3to2): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901062
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']
Item: (RedenVerwijzing3to2)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']"
         id="d480823e25-false-d480902e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing3to2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901062')">(RedenVerwijzing3to2): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901062' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901062
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]
Item: (RedenVerwijzing3to2)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.4.13.10')]"
         id="d480823e30-false-d480921e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing3to2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="@nullFlavor or (@code='4' and @codeSystem='2.16.840.1.113883.2.4.4.13.10')">(RedenVerwijzing3to2): de elementwaarde MOET een zijn van 'code '4' codeSystem '2.16.840.1.113883.2.4.4.13.10''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901062
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code]
Item: (RedenVerwijzing3to2)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d480823e35-false-d480943e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing3to2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(RedenVerwijzing3to2): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.225 Reden Verwijzing (3e naar 2e lijn) (2016-11-22T11:21:07)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.225-2016-11-22T112107.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(RedenVerwijzing3to2): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.225 Reden Verwijzing (3e naar 2e lijn) (2016-11-22T11:21:07).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901062
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:text
Item: (RedenVerwijzing3to2)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='RSON']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901062']]/hl7:text"
         id="d480823e41-false-d480970e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901062-2016-12-05T165345.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwijzing3to2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']"
         id="d15e58775-false-d480981e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@typeCode) = ('PERT')">(Verwijsdetails233): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]) &gt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]) &lt;= 1">(Verwijsdetails233): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900895
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]
Item: (Perinataleperiodevanoverdracht)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]"
         id="d481011e19-false-d481019e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="string(@classCode) = ('OBS')">(Perinataleperiodevanoverdracht): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="string(@moodCode) = ('EVN')">(Perinataleperiodevanoverdracht): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']) &gt;= 1">(Perinataleperiodevanoverdracht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']) &lt;= 1">(Perinataleperiodevanoverdracht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="count(hl7:code[(@code = 'PRN210603' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &gt;= 1">(Perinataleperiodevanoverdracht): element hl7:code[(@code = 'PRN210603' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="count(hl7:code[(@code = 'PRN210603' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &lt;= 1">(Perinataleperiodevanoverdracht): element hl7:code[(@code = 'PRN210603' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Perinataleperiodevanoverdracht): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Perinataleperiodevanoverdracht): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900895
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']
Item: (Perinataleperiodevanoverdracht)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']"
         id="d481011e25-false-d481087e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Perinataleperiodevanoverdracht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900895')">(Perinataleperiodevanoverdracht): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900895' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900895
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]/hl7:code[(@code = 'PRN210603' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Perinataleperiodevanoverdracht)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]/hl7:code[(@code = 'PRN210603' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]"
         id="d481011e30-false-d481106e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Perinataleperiodevanoverdracht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="@nullFlavor or (@code='PRN210603' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Perinataleperiodevanoverdracht): de elementwaarde MOET een zijn van 'code 'PRN210603' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900895
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Perinataleperiodevanoverdracht)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900895']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d481011e35-false-d481128e0">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Perinataleperiodevanoverdracht): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.169 PerinatalePeriodeOverdrachtConsult (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.169-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Perinataleperiodevanoverdracht): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.169 PerinatalePeriodeOverdrachtConsult (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900895-2016-12-03T165258.html"
              test="@xsi:type">(Perinataleperiodevanoverdracht): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901098
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']
Item: (Verwijsdetails233)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']"
         id="d15e58785-false-d481156e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@typeCode) = ('GEN')">(Verwijsdetails233): de waarde van typeCode MOET 'GEN' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="string(@inversionInd) = ('true')">(Verwijsdetails233): de waarde van inversionInd MOET 'true' zijn. Gevonden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]) &gt;= 1">(Verwijsdetails233): element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]) &lt;= 1">(Verwijsdetails233): element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901059
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]
Item: (ConsultOvername)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]"
         id="d481192e18-false-d481200e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="string(@classCode) = ('ACT')">(ConsultOvername): de waarde van classCode MOET 'ACT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="string(@moodCode) = ('EVN')">(ConsultOvername): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']) &gt;= 1">(ConsultOvername): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']) &lt;= 1">(ConsultOvername): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(ConsultOvername): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(ConsultOvername): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901059
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']
Item: (ConsultOvername)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']"
         id="d481192e24-false-d481253e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ConsultOvername): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901059')">(ConsultOvername): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901059' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901059
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ConsultOvername)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901098']]/hl7:outboundRelationship[@typeCode='GEN']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901059']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d481192e29-false-d481274e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ConsultOvername): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ConsultOvername): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.221 Type verwijzing (2016-12-01T11:20:08)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.221-2016-12-01T112008.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901059-2016-12-03T164103.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ConsultOvername): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.221 Type verwijzing (2016-12-01T11:20:08).</assert>
   </rule>
</pattern>
