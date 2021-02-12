<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901185
Name: Neurologisch encefalopathie ernst
Description: Template voor de weergave van gegevens over de ernst van de encefalopathie
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236">
   <title>Neurologisch encefalopathie ernst</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901185
Context: **
Item: (CDAProblEncPathSeverity)
-->

   <rule context="**" id="d15e67074-false-d572935e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]) &gt;= 1">(CDAProblEncPathSeverity): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]) &lt;= 1">(CDAProblEncPathSeverity): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901185
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]
Item: (CDAProblEncPathSeverity)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]"
         id="d15e67105-false-d572960e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAProblEncPathSeverity): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="string(@moodCode) = ('EVN')">(CDAProblEncPathSeverity): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']) &gt;= 1">(CDAProblEncPathSeverity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']) &lt;= 1">(CDAProblEncPathSeverity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CDAProblEncPathSeverity): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDAProblEncPathSeverity): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:value[(@code = '81308009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAProblEncPathSeverity): element hl7:value[(@code = '81308009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:value[(@code = '81308009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAProblEncPathSeverity): element hl7:value[(@code = '81308009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.18']]]) &lt;= 1">(CDAProblEncPathSeverity): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.18']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901185
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']
Item: (CDAProblEncPathSeverity)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']"
         id="d15e67122-false-d573036e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProblEncPathSeverity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901185')">(CDAProblEncPathSeverity): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901185' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901185
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAProblEncPathSeverity)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e67128-false-d573055e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProblEncPathSeverity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="@nullFlavor or (@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')">(CDAProblEncPathSeverity): de elementwaarde MOET een zijn van 'code '282291009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901185
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:value[(@code = '81308009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAProblEncPathSeverity)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:value[(@code = '81308009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e67141-false-d573075e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProblEncPathSeverity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="@nullFlavor or (@code='81308009' and @codeSystem='2.16.840.1.113883.6.96')">(CDAProblEncPathSeverity): de elementwaarde MOET een zijn van 'code '81308009' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="@displayName">(CDAProblEncPathSeverity): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAProblEncPathSeverity): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901185
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.18']]]
Item: (CDAProblEncPathSeverity)
-->
   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901185']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.18']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="string(@typeCode) = ('SUBJ')">(CDAProblEncPathSeverity): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901185-2018-11-07T221236.html"
              test="string(@inversionInd) = ('true')">(CDAProblEncPathSeverity): de waarde van inversionInd MOET 'true' zijn. Gevonden: "<value-of select="@inversionInd"/>"</assert>
   </rule>
</pattern>
