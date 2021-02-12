<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901121
Name: Medicatiegebruik magnesiumsulfaat
Description: Medication use Magnesiumsulfaat for Kernset Neonatology CDA substanceAdministration
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035">
   <title>Medicatiegebruik magnesiumsulfaat</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]"
         id="d15e61157-false-d572951e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@classCode) = ('SBADM')">(CDAKsNeoSubsAdmMagnSulf): de waarde van classCode MOET 'SBADM' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoSubsAdmMagnSulf): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAKsNeoSubsAdmMagnSulf): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121']) &gt;= 1">(CDAKsNeoSubsAdmMagnSulf): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121']) &lt;= 1">(CDAKsNeoSubsAdmMagnSulf): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.808']) &gt;= 1">(CDAKsNeoSubsAdmMagnSulf): element hl7:templateId[@root = '2.16.840.1.113883.10.12.808'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.808']) &lt;= 1">(CDAKsNeoSubsAdmMagnSulf): element hl7:templateId[@root = '2.16.840.1.113883.10.12.808'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="count(hl7:consumable[@typeCode = 'CSM']) &gt;= 1">(CDAKsNeoSubsAdmMagnSulf): element hl7:consumable[@typeCode = 'CSM'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="count(hl7:consumable[@typeCode = 'CSM']) &lt;= 1">(CDAKsNeoSubsAdmMagnSulf): element hl7:consumable[@typeCode = 'CSM'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121']
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121']"
         id="d15e61169-false-d573023e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSubsAdmMagnSulf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901121')">(CDAKsNeoSubsAdmMagnSulf): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901121' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.808']
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.808']"
         id="d15e61174-false-d573042e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSubsAdmMagnSulf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.808')">(CDAKsNeoSubsAdmMagnSulf): de waarde van root MOET '2.16.840.1.113883.10.12.808' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']"
         id="d15e61180-false-d573061e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@typeCode) = ('CSM')">(CDAKsNeoSubsAdmMagnSulf): de waarde van typeCode MOET 'CSM' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']/hl7:manufacturedProduct[@classCode = 'MANU']
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']/hl7:manufacturedProduct[@classCode = 'MANU']"
         id="d15e61184-false-d573080e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@classCode) = ('MANU')">(CDAKsNeoSubsAdmMagnSulf): de waarde van classCode MOET 'MANU' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']/hl7:manufacturedProduct[@classCode = 'MANU']/hl7:manufacturedMaterial[@classCode = 'MMAT'][@determinerCode = 'KIND']
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']/hl7:manufacturedProduct[@classCode = 'MANU']/hl7:manufacturedMaterial[@classCode = 'MMAT'][@determinerCode = 'KIND']"
         id="d15e61188-false-d573099e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@classCode) = ('MMAT')">(CDAKsNeoSubsAdmMagnSulf): de waarde van classCode MOET 'MMAT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="string(@determinerCode) = ('KIND')">(CDAKsNeoSubsAdmMagnSulf): de waarde van determinerCode MOET 'KIND' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901121
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']/hl7:manufacturedProduct[@classCode = 'MANU']/hl7:manufacturedMaterial[@classCode = 'MMAT'][@determinerCode = 'KIND']/hl7:code[(@code = 'A12CC02' and @codeSystem = '2.16.840.1.113883.6.73') or @nullFlavor]
Item: (CDAKsNeoSubsAdmMagnSulf)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901121'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]/hl7:consumable[@typeCode = 'CSM']/hl7:manufacturedProduct[@classCode = 'MANU']/hl7:manufacturedMaterial[@classCode = 'MMAT'][@determinerCode = 'KIND']/hl7:code[(@code = 'A12CC02' and @codeSystem = '2.16.840.1.113883.6.73') or @nullFlavor]"
         id="d15e61194-false-d573124e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSubsAdmMagnSulf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.html"
              test="@nullFlavor or (@code='A12CC02' and @codeSystem='2.16.840.1.113883.6.73')">(CDAKsNeoSubsAdmMagnSulf): de elementwaarde MOET een zijn van 'code 'A12CC02' codeSystem '2.16.840.1.113883.6.73''.</assert>
   </rule>
</pattern>
