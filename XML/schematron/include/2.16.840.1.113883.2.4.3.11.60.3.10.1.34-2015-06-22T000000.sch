<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Name: zorgverlener (participant header)
Description: Template Zorgverlener
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000">
   <title>zorgverlener (participant header)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']"
         id="d15e8367-false-d81664e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@typeCode">(zorgverlener-participant-header): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (('IND'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.5-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-participant-header): de waarde van typeCode MOET worden gekozen uit code IND of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.5' ZorgverlenerRolCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@contextControlCode) = ('OP')">(zorgverlener-participant-header): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(zorgverlener-participant-header): element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]) &gt;= 1">(zorgverlener-participant-header): element hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]) &lt;= 1">(zorgverlener-participant-header): element hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e8384-false-d81746e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-participant-header): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10267 ParticipationFunction (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]"
         id="d15e8395-false-d81787e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@classCode) = ('CAREGIVER')">(zorgverlener-participant-header): de waarde van classCode MOET 'CAREGIVER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']) &gt;= 1">(zorgverlener-participant-header): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']) &lt;= 1">(zorgverlener-participant-header): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(zorgverlener-participant-header): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(zorgverlener-participant-header): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.5.1']) &lt;= 1">(zorgverlener-participant-header): element hl7:id[@root = '2.16.528.1.1007.5.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(zorgverlener-participant-header): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:addr) &lt;= 1">(zorgverlener-participant-header): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:associatedPerson) &lt;= 1">(zorgverlener-participant-header): element hl7:associatedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:scopingEntity) &lt;= 1">(zorgverlener-participant-header): element hl7:scopingEntity komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']"
         id="d15e8399-false-d81916e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.1.34')">(zorgverlener-participant-header): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.1.34' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]
Item: (id_zorgverlener)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (id_zorgverlener)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d81929e13-false-d81940e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(id_zorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(id_zorgverlener): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="@extension">(id_zorgverlener): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (id_zorgverlener)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d81929e32-false-d81964e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(id_zorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(id_zorgverlener): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="@extension">(id_zorgverlener): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.5.1']
Item: (id_zorgverlener)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.5.1']"
         id="d81929e51-false-d81988e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(id_zorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="string(@root) = ('2.16.528.1.1007.5.1')">(id_zorgverlener): de waarde van root MOET '2.16.528.1.1007.5.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2015-06-22T000000.html"
              test="@extension">(id_zorgverlener): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e8409-false-d82016e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2015-04-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2015-04-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-participant-header): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7 SpecialismeAGBCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6 SpecialismeUZICodelijst (2015-04-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr"
         id="d15e8419-false-d82053e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.2-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-participant-header): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.2' AdresSoortCodelijst (2015-04-01T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:streetName) &lt;= 1">(zorgverlener-participant-header): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(zorgverlener-participant-header): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(zorgverlener-participant-header): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(zorgverlener-participant-header): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(zorgverlener-participant-header): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:county) &lt;= 1">(zorgverlener-participant-header): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:city) &lt;= 1">(zorgverlener-participant-header): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:country) &lt;= 1">(zorgverlener-participant-header): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:unitID) &lt;= 1">(zorgverlener-participant-header): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(zorgverlener-participant-header): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:streetName"
         id="d82169e101-false-d82177e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:houseNumber"
         id="d82169e116-false-d82190e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:buildingNumberSuffix"
         id="d82169e135-false-d82203e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:additionalLocator"
         id="d82169e228-false-d82216e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:postalCode"
         id="d82169e243-false-d82237e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:county"
         id="d82169e276-false-d82252e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:city"
         id="d82169e285-false-d82265e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:country"
         id="d82169e294-false-d82278e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:unitID"
         id="d82169e335-false-d82293e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:useablePeriod"
         id="d82169e356-false-d82306e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'tel:')]
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d15e8428-false-d82317e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.3-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-participant-header): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.3' NummerSoortCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@value">(zorgverlener-participant-header): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-participant-header): attribuut @value MOET datatype 'url' hebben  - '<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d15e8436-false-d82359e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.4-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-participant-header): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.4' EmailSoortCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@value">(zorgverlener-participant-header): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-participant-header): attribuut @value MOET datatype 'url' hebben  - '<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson
Item: (zorgverlener-participant-header)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.4
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson
Item: (persoon)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:name) &gt;= 1">(persoon): element hl7:name is required [min 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.4
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name
Item: (persoon)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('L','A','OR')))])">(persoon): de waarde van use MOET 'code L of code A of code OR' zijn. Gevonden: "<value-of select="@use"/>"</assert>
      <extends rule="PN.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(persoon): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:given[@qualifier='BR']) &lt;= 1">(persoon): element hl7:given[@qualifier='BR'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:given[@qualifier='CL']) &lt;= 1">(persoon): element hl7:given[@qualifier='CL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:given[@qualifier='IN']) &lt;= 1">(persoon): element hl7:given[@qualifier='IN'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:given[not(@qualifier)]) &lt;= 1">(persoon): element hl7:given[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:prefix[not(@qualifier)]) &lt;= 1">(persoon): element hl7:prefix[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:family[not(@qualifier)]) &lt;= 1">(persoon): element hl7:family[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]) &lt;= 1">(persoon): element hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:family[@qualifier='BR']) &lt;= 1">(persoon): element hl7:family[@qualifier='BR'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:delimiter[not(@nullFlavor)]) &lt;= 1">(persoon): element hl7:delimiter[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]) &lt;= 1">(persoon): element hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:family[@qualifier='SP']) &lt;= 1">(persoon): element hl7:family[@qualifier='SP'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:suffix[not(@nullFlavor)]) &lt;= 1">(persoon): element hl7:suffix[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="count(hl7:validTime) &lt;= 1">(persoon): element hl7:validTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2015-06-22T000000.html"
              test="not(*) or (hl7:given and hl7:family)">(persoon): In een gestructureerde naam moet minimaal één voornaam, initiaal of roepnaam en minimaal één geslachtsnaam of geslachtsnaam partner van een persoon aanwezig zijn, inclusief voorvoegsel(s) indien van toepassing</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[@qualifier='BR']">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('BR')">(PN.NL): de waarde van qualifier MOET 'BR' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[@qualifier='CL']">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('CL')">(PN.NL): de waarde van qualifier MOET 'CL' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[@qualifier='IN']">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('IN')">(PN.NL): de waarde van qualifier MOET 'IN' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:given[not(@qualifier)]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:prefix[not(@qualifier)]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:family[not(@qualifier)]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('VV')">(PN.NL): de waarde van qualifier MOET 'VV' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:family[@qualifier='BR']">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('BR')">(PN.NL): de waarde van qualifier MOET 'BR' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:delimiter[not(@nullFlavor)]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:delimiter[not(@nullFlavor)]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('VV')">(PN.NL): de waarde van qualifier MOET 'VV' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:family[@qualifier='SP']">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('SP')">(PN.NL): de waarde van qualifier MOET 'SP' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:suffix[not(@nullFlavor)]
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:suffix[not(@nullFlavor)]">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('AC') or not(@qualifier)">(PN.NL): de waarde van qualifier MOET 'AC' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:validTime
Item: (PN.NL)
-->
   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:associatedPerson/hl7:name/hl7:validTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity"
         id="d15e8450-false-d82832e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@classCode) = ('ENT') or not(@classCode)">(zorgverlener-participant-header): de waarde van classCode MOET 'ENT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(zorgverlener-participant-header): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(zorgverlener-participant-header): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(zorgverlener-participant-header): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(zorgverlener-participant-header): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="count(hl7:desc) &lt;= 1">(zorgverlener-participant-header): element hl7:desc komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d15e8464-false-d82890e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgverlener-participant-header): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@extension">(zorgverlener-participant-header): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverlener-participant-header): attribuut @extension MOET datatype 'st' hebben  - '<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d15e8478-false-d82919e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgverlener-participant-header): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@extension">(zorgverlener-participant-header): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverlener-participant-header): attribuut @extension MOET datatype 'st' hebben  - '<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e8493-false-d82950e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2015-04-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-participant-header): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2015-04-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.34
Context: //hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:desc
Item: (zorgverlener-participant-header)
-->

   <rule context="//hl7:participant[*/hl7:templateId/@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']/hl7:associatedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:scopingEntity/hl7:desc"
         id="d15e8507-false-d82972e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.34-2015-06-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(zorgverlener-participant-header): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
