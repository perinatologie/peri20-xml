<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.46
Name: Acknowledgement
Description: Accept Acknowledgement
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000">
   <title>Acknowledgement</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002" id="d15e12043-false-d138869e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:creationTime[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:creationTime[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &gt;= 1">(mcci2-ack): element hl7:versionCode[@code = 'NICTIZEd2005-Okt'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &lt;= 1">(mcci2-ack): element hl7:versionCode[@code = 'NICTIZEd2005-Okt'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &gt;= 1">(mcci2-ack): element hl7:interactionId[@root = '2.16.840.1.113883.1.6'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &lt;= 1">(mcci2-ack): element hl7:interactionId[@root = '2.16.840.1.113883.1.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']) &gt;= 1">(mcci2-ack): element hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']) &lt;= 1">(mcci2-ack): element hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:processingCode[@code = 'P']) &gt;= 1">(mcci2-ack): element hl7:processingCode[@code = 'P'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:processingCode[@code = 'P']) &lt;= 1">(mcci2-ack): element hl7:processingCode[@code = 'P'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:processingModeCode[@code = 'T']) &gt;= 1">(mcci2-ack): element hl7:processingModeCode[@code = 'T'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:processingModeCode[@code = 'T']) &lt;= 1">(mcci2-ack): element hl7:processingModeCode[@code = 'T'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:acceptAckCode[@code = 'NE']) &gt;= 1">(mcci2-ack): element hl7:acceptAckCode[@code = 'NE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:acceptAckCode[@code = 'NE']) &lt;= 1">(mcci2-ack): element hl7:acceptAckCode[@code = 'NE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]) &gt;= 1">(mcci2-ack): element hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]) &lt;= 1">(mcci2-ack): element hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:id[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:id[not(@nullFlavor)]"
         id="d15e12100-false-d139012e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@root and @extension">(mcci2-ack): Transmission: id element mist root of extension</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:creationTime[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:creationTime[not(@nullFlavor)]"
         id="d15e12110-false-d139025e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(*)">(mcci2-ack): <value-of select="local-name()"/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:versionCode[@code = 'NICTIZEd2005-Okt']
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:versionCode[@code = 'NICTIZEd2005-Okt']"
         id="d15e12119-false-d139042e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@nullFlavor or (@code='NICTIZEd2005-Okt')">(mcci2-ack): de elementwaarde MOET een zijn van 'code 'NICTIZEd2005-Okt''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:interactionId[@root = '2.16.840.1.113883.1.6']
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:interactionId[@root = '2.16.840.1.113883.1.6']"
         id="d15e12127-false-d139062e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="string(@root) = ('2.16.840.1.113883.1.6')">(mcci2-ack): de waarde van root MOET '2.16.840.1.113883.1.6' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <let name="interactionId"
           value="self::node()[@root='2.16.840.1.113883.1.6']/@extension"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension">(mcci2-ack): Transmission: @extension moet overeenkomen met het startelement van het bericht</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']"
         id="d15e12140-false-d139081e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.9')">(mcci2-ack): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.9' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="string(@extension) = ('F1')">(mcci2-ack): de waarde van extension MOET 'F1' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:processingCode[@code = 'P']
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:processingCode[@code = 'P']"
         id="d15e12150-false-d139106e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@nullFlavor or (@code='P')">(mcci2-ack): de elementwaarde MOET een zijn van 'code 'P''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:processingModeCode[@code = 'T']
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:processingModeCode[@code = 'T']"
         id="d15e12158-false-d139126e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@nullFlavor or (@code='T')">(mcci2-ack): de elementwaarde MOET een zijn van 'code 'T''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acceptAckCode[@code = 'NE']
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acceptAckCode[@code = 'NE']"
         id="d15e12167-false-d139146e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@nullFlavor or (@code='NE')">(mcci2-ack): de elementwaarde MOET een zijn van 'code 'NE''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]"
         id="d15e12175-false-d139166e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@typeCode">(mcci2-ack): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (('CA','CE','CR','AA','AE','AR')))])">(mcci2-ack): de waarde van typeCode MOET 'code CA of code CE of code CR of code AA of code AE of code AR' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@typeCode='CA' or @typeCode='CE' or @typeCode='CR'">(mcci2-ack): Transmission: ontvangstbevestigingen moeten acknowledgement/@typeCode CA, CE of CR hebben. In slechts sommige gevallen worden toch inhoudelijke antwoorden toegestaan (@typeCode is 'AA', 'AE' or 'AR').</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@typeCode='AA' or @typeCode='CA' or hl7:acknowledgementDetail">(mcci2-ack): Transmission: negatieve antwoordberichten moeten ook een reden hebben waarom</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:targetMessage[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:targetMessage[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:targetMessage[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:targetMessage[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail"
         id="d15e12214-false-d139242e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="string(@typeCode) = ('E') or not(@typeCode)">(mcci2-ack): de waarde van typeCode MOET 'E' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="hl7:code[@code and @displayName] or hl7:text">(mcci2-ack): Transmission: er moet een toelichting op de fout/waarschuwing zijn in hl7:code/@displayName of text</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:code[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:code[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:code[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:code[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:text) &lt;= 1">(mcci2-ack): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:code[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:code[not(@nullFlavor)]"
         id="d15e12227-false-d139285e0">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="@displayName or @codeSystem='2.16.840.1.113883.5.1100' or @codeSystem='2.16.840.1.113883.2.4.6.6.1.1000' or @codeSystem='2.16.840.1.113883.5.4'">(mcci2-ack): Transmission: als de code niet uit een van de standaardcodesystemen '2.16.840.1.113883.5.1100', '2.16.840.1.113883.2.4.6.6.1.1000', of '2.16.840.1.113883.5.4' komt is het @displayName attribuut verplicht</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:text
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:text"
         id="d15e12237-false-d139298e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:location
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:location"
         id="d15e12243-false-d139311e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]"
         id="d15e12250-false-d139324e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d15e12255-false-d139348e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]"
         id="d15e12262-false-d139361e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="string(@typeCode) = ('RCV') or not(@typeCode)">(mcci2-ack): de waarde van typeCode MOET 'RCV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:device[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:device[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]"
         id="d15e12280-false-d139391e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:name) &lt;= 1">(mcci2-ack): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d15e12285-false-d139424e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name"
         id="d15e12291-false-d139437e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]"
         id="d15e12299-false-d139450e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="string(@typeCode) = ('SND') or not(@typeCode)">(mcci2-ack): de waarde van typeCode MOET 'SND' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:device[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:device[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]"
         id="d15e12317-false-d139480e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="count(hl7:name) &lt;= 1">(mcci2-ack): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d15e12322-false-d139513e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.46
Context: hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name
Item: (mcci2-ack)
-->

   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name"
         id="d15e12328-false-d139526e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
