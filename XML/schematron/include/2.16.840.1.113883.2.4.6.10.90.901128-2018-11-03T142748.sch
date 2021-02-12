<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901128
Name: Opname sectie kernset neonatologie
Description: Admission kernset neonatology CDA section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748">
   <title>Opname sectie kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]
Item: (CDAKsNeoAdmissionSection)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]
Item: (CDAKsNeoAdmissionSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]"
         id="d15e61719-false-d504186e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(CDAKsNeoAdmissionSection): de waarde van classCode MOET 'DOCSECT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAKsNeoAdmissionSection): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128']) &gt;= 1">(CDAKsNeoAdmissionSection): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128']) &lt;= 1">(CDAKsNeoAdmissionSection): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &gt;= 1">(CDAKsNeoAdmissionSection): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &lt;= 1">(CDAKsNeoAdmissionSection): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:code[(@code = '51849-8' and @codeSystem = '2.16.840.1.113883.1.6')]) &gt;= 1">(CDAKsNeoAdmissionSection): element hl7:code[(@code = '51849-8' and @codeSystem = '2.16.840.1.113883.1.6')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:code[(@code = '51849-8' and @codeSystem = '2.16.840.1.113883.1.6')]) &lt;= 1">(CDAKsNeoAdmissionSection): element hl7:code[(@code = '51849-8' and @codeSystem = '2.16.840.1.113883.1.6')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:title) &gt;= 1">(CDAKsNeoAdmissionSection): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:title) &lt;= 1">(CDAKsNeoAdmissionSection): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:text) &gt;= 1">(CDAKsNeoAdmissionSection): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="count(hl7:text) &lt;= 1">(CDAKsNeoAdmissionSection): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128']
Item: (CDAKsNeoAdmissionSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128']"
         id="d15e61725-false-d504314e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAdmissionSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901128')">(CDAKsNeoAdmissionSection): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901128' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']
Item: (CDAKsNeoAdmissionSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']"
         id="d15e61730-false-d504333e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAdmissionSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.701')">(CDAKsNeoAdmissionSection): de waarde van root MOET '2.16.840.1.113883.10.12.701' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:code[(@code = '51849-8' and @codeSystem = '2.16.840.1.113883.1.6')]
Item: (CDAKsNeoAdmissionSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:code[(@code = '51849-8' and @codeSystem = '2.16.840.1.113883.1.6')]"
         id="d15e61735-false-d504352e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAdmissionSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="@nullFlavor or (@code='51849-8' and @codeSystem='2.16.840.1.113883.1.6')">(CDAKsNeoAdmissionSection): de elementwaarde MOET een zijn van 'code '51849-8' codeSystem '2.16.840.1.113883.1.6''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:title
Item: (CDAKsNeoAdmissionSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:title"
         id="d15e61746-false-d504372e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAdmissionSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:text
Item: (CDAKsNeoAdmissionSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:text"
         id="d15e61748-false-d504385e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAdmissionSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901128
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]
Item: (CDAKsNeoAdmissionSection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901128'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoAdmissionSection): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoAdmissionSection): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
