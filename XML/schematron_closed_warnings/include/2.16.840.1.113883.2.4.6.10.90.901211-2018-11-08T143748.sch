<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901211
Name: Follow-up na ontslag organizer
Description: 
                 Follow-up na ontslag organizer CDA 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748">
   <title>Follow-up na ontslag organizer</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]"
         id="d15e69510-false-d690358e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="string(@classCode) = ('CLUSTER')">(CDAKsNeoOrganizerFollowUpDischarge): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoOrganizerFollowUpDischarge): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']) &gt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']) &lt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:code[(@code = '406151001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:code[(@code = '406151001' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:code[(@code = '406151001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:code[(@code = '406151001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:statusCode[@code = 'completed' or @nullFlavor]) &gt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:statusCode[@code = 'completed' or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:statusCode[@code = 'completed' or @nullFlavor]) &lt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:statusCode[@code = 'completed' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]) &lt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901212']]]) &lt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901212']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="count(hl7:component[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]]) &lt;= 1">(CDAKsNeoOrganizerFollowUpDischarge): element hl7:component[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']"
         id="d15e69516-false-d690478e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoOrganizerFollowUpDischarge): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901211')">(CDAKsNeoOrganizerFollowUpDischarge): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901211' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:code[(@code = '406151001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:code[(@code = '406151001' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e69521-false-d690497e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoOrganizerFollowUpDischarge): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="@nullFlavor or (@code='406151001' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoOrganizerFollowUpDischarge): de elementwaarde MOET een zijn van 'code '406151001' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="@displayName">(CDAKsNeoOrganizerFollowUpDischarge): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAKsNeoOrganizerFollowUpDischarge): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:statusCode[@code = 'completed' or @nullFlavor]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:statusCode[@code = 'completed' or @nullFlavor]"
         id="d15e69537-false-d690527e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.html"
              test="@nullFlavor or (@code='completed')">(CDAKsNeoOrganizerFollowUpDischarge): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901212']]]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901211
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901211']]/hl7:component[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]]
Item: (CDAKsNeoOrganizerFollowUpDischarge)
--></pattern>
