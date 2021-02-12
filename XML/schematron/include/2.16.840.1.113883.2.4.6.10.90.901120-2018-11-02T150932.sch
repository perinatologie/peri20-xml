<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901120
Name: Behandeling antenale steroiden kernset neo
Description: 
                 Template voor de weergave van therapeutische verrichtingen die de fysieke toestand van patiënt kunnen veranderen. 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932">
   <title>Behandeling antenale steroiden kernset neo</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901120
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]
Item: (CDAKsNeoProcAntSter)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]"
         id="d15e60982-false-d502273e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]) &gt;= 1">(CDAKsNeoProcAntSter): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]) &lt;= 1">(CDAKsNeoProcAntSter): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901120
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]
Item: (CDAKsNeoProcAntSter)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]"
         id="d15e61039-false-d502296e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoProcAntSter): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcAntSter): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAKsNeoProcAntSter): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAKsNeoProcAntSter): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']) &gt;= 1">(CDAKsNeoProcAntSter): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']) &lt;= 1">(CDAKsNeoProcAntSter): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:code[(@code = '434601000124108' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoProcAntSter): element hl7:code[(@code = '434601000124108' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:code[(@code = '434601000124108' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoProcAntSter): element hl7:code[(@code = '434601000124108' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.243-2019-05-31T115916.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAKsNeoProcAntSter): element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.243-2019-05-31T115916.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901120
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAKsNeoProcAntSter)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']"
         id="d15e61056-false-d502373e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAntSter): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAKsNeoProcAntSter): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901120
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']
Item: (CDAKsNeoProcAntSter)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']"
         id="d15e61070-false-d502392e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAntSter): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901120')">(CDAKsNeoProcAntSter): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901120' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901120
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:code[(@code = '434601000124108' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoProcAntSter)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:code[(@code = '434601000124108' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e61075-false-d502411e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAntSter): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="@nullFlavor or (@code='434601000124108' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoProcAntSter): de elementwaarde MOET een zijn van 'code '434601000124108' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901120
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.243-2019-05-31T115916.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAKsNeoProcAntSter)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901120']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.243-2019-05-31T115916.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e61088-false-d502433e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAntSter): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.243-2019-05-31T115916.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoProcAntSter): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.243 Antanatale Steroiden for methodCode (2019-05-31T11:59:16)'.</assert>
   </rule>
</pattern>
