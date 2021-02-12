<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901119
Name: Schedelomvang
Description: Skull circumference CDA Observation
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052">
   <title>Schedelomvang</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]
Item: (CDASkullCircumf)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]
Item: (CDASkullCircumf)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]"
         id="d15e60918-false-d572506e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="string(@classCode) = ('OBS')">(CDASkullCircumf): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="string(@moodCode) = ('EVN')">(CDASkullCircumf): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119']) &gt;= 1">(CDASkullCircumf): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119']) &lt;= 1">(CDASkullCircumf): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &gt;= 1">(CDASkullCircumf): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &lt;= 1">(CDASkullCircumf): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:code[(@code = '56792006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDASkullCircumf): element hl7:code[(@code = '56792006' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:code[(@code = '56792006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDASkullCircumf): element hl7:code[(@code = '56792006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDASkullCircumf): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:value) &gt;= 1">(CDASkullCircumf): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="count(hl7:value) &lt;= 1">(CDASkullCircumf): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119']
Item: (CDASkullCircumf)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119']"
         id="d15e60924-false-d572602e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASkullCircumf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901119')">(CDASkullCircumf): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901119' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']
Item: (CDASkullCircumf)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']"
         id="d15e60929-false-d572621e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASkullCircumf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.803')">(CDASkullCircumf): de waarde van root MOET '2.16.840.1.113883.10.12.803' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '56792006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDASkullCircumf)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '56792006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e60934-false-d572640e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASkullCircumf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="@nullFlavor or (@code='56792006' and @codeSystem='2.16.840.1.113883.6.96')">(CDASkullCircumf): de elementwaarde MOET een zijn van 'code '56792006' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="@displayName">(CDASkullCircumf): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDASkullCircumf): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:effectiveTime
Item: (CDASkullCircumf)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value
Item: (CDASkullCircumf)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value"
         id="d15e60961-false-d572679e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASkullCircumf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(CDASkullCircumf): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(CDASkullCircumf): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="string(@unit) = ('cm') or not(@unit)">(CDASkullCircumf): de waarde van unit MOET 'cm' zijn. Gevonden: "<value-of select="@unit"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901119
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.12.14.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDASkullCircumf)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901119'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.12.14.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e60968-false-d572708e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASkullCircumf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.12.14.1-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASkullCircumf): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.12.14.1 SchedelomvangMeetmethodeCodelijst (2017-12-31T00:00:00)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="@displayName">(CDASkullCircumf): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901119-2018-11-02T141052.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDASkullCircumf): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>
</pattern>
