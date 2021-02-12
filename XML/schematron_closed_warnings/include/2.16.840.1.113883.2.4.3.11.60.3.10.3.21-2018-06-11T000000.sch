<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Name: product instance
Description: Template: Product Instance
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000">
   <title>product instance</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]
Item: (product_instance)
-->

   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]"
         id="d15e9060-false-d83376e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]) &gt;= 1">(product_instance): element hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]) &lt;= 1">(product_instance): element hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]
Item: (product_instance)
-->

   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]"
         id="d15e9087-false-d83401e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="string(@classCode) = ('MANU')">(product_instance): de waarde van classCode MOET 'MANU' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']) &gt;= 1">(product_instance): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']) &lt;= 1">(product_instance): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21'] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '1.3.160'] | hl7:id[@root = '2.16.840.1.113883.6.40'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="$elmcount &lt;= 1">(product_instance): keuze (hl7:id[@root = '1.3.160']  of  hl7:id[@root = '2.16.840.1.113883.6.40']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:id[@root = '1.3.160']) &lt;= 1">(product_instance): element hl7:id[@root = '1.3.160'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.6.40']) &lt;= 1">(product_instance): element hl7:id[@root = '2.16.840.1.113883.6.40'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="count(hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]) &lt;= 1">(product_instance): element hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']
Item: (product_instance)
-->

   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']"
         id="d15e9091-false-d83474e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(product_instance): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.3.21')">(product_instance): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.3.21' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:id[@root = '1.3.160']
Item: (product_instance)
-->

   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:id[@root = '1.3.160']"
         id="d15e9106-false-d83493e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(product_instance): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="string(@root) = ('1.3.160')">(product_instance): de waarde van root MOET '1.3.160' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:id[@root = '2.16.840.1.113883.6.40']
Item: (product_instance)
-->

   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:id[@root = '2.16.840.1.113883.6.40']"
         id="d15e9119-false-d83512e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(product_instance): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.6.40')">(product_instance): de waarde van root MOET '2.16.840.1.113883.6.40' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.21
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]
Item: (product_instance)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.22
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]
Item: (medisch_hulpmiddel)
-->
   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="string(@classCode) = ('DEV')">(medisch_hulpmiddel): de waarde van classCode MOET 'DEV' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]) &gt;= 1">(medisch_hulpmiddel): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]) &lt;= 1">(medisch_hulpmiddel): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="count(sdtc:desc) &lt;= 1">(medisch_hulpmiddel): element sdtc:desc komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.22
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]
Item: (medisch_hulpmiddel)
-->
   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(medisch_hulpmiddel): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]])">(medisch_hulpmiddel): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1 ProductTypeCodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.3.22
Context: *[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]/sdtc:desc
Item: (medisch_hulpmiddel)
-->
   <rule context="*[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.21']]/hl7:playingDevice[hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.10.1.1-2017-12-31T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]]/sdtc:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.3.22-2018-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(medisch_hulpmiddel): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
