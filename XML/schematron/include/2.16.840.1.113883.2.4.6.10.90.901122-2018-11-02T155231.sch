<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901122
Name: Neonatal delivery information
Description: Neonatal delivery information CDA section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231">
   <title>Neonatal delivery information</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]
Item: (NeonatalDeliveryInformation)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]
Item: (NeonatalDeliveryInformation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]"
         id="d15e61253-false-d502721e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(NeonatalDeliveryInformation): de waarde van classCode MOET 'DOCSECT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(NeonatalDeliveryInformation): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122']) &gt;= 1">(NeonatalDeliveryInformation): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122']) &lt;= 1">(NeonatalDeliveryInformation): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &gt;= 1">(NeonatalDeliveryInformation): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &lt;= 1">(NeonatalDeliveryInformation): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:code[(@code = '15508-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(NeonatalDeliveryInformation): element hl7:code[(@code = '15508-5' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:code[(@code = '15508-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(NeonatalDeliveryInformation): element hl7:code[(@code = '15508-5' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:title) &gt;= 1">(NeonatalDeliveryInformation): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:title) &lt;= 1">(NeonatalDeliveryInformation): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:text) &gt;= 1">(NeonatalDeliveryInformation): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="count(hl7:text) &lt;= 1">(NeonatalDeliveryInformation): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122']
Item: (NeonatalDeliveryInformation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122']"
         id="d15e61259-false-d502831e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NeonatalDeliveryInformation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901122')">(NeonatalDeliveryInformation): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901122' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']
Item: (NeonatalDeliveryInformation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']"
         id="d15e61264-false-d502850e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NeonatalDeliveryInformation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.701')">(NeonatalDeliveryInformation): de waarde van root MOET '2.16.840.1.113883.10.12.701' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:code[(@code = '15508-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (NeonatalDeliveryInformation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:code[(@code = '15508-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e61269-false-d502869e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NeonatalDeliveryInformation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="@nullFlavor or (@code='15508-5' and @codeSystem='2.16.840.1.113883.6.1')">(NeonatalDeliveryInformation): de elementwaarde MOET een zijn van 'code '15508-5' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:title
Item: (NeonatalDeliveryInformation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:title"
         id="d15e61275-false-d502889e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NeonatalDeliveryInformation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:text
Item: (NeonatalDeliveryInformation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:text"
         id="d15e61277-false-d502902e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NeonatalDeliveryInformation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901122
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901123']]]
Item: (NeonatalDeliveryInformation)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901122'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901123']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(NeonatalDeliveryInformation): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(NeonatalDeliveryInformation): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
