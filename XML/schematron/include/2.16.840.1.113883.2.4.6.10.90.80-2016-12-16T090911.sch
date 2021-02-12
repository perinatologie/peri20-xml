<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.80
Name: Counseling
Description: Template: Counseling naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911">
   <title>Counseling</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.80
Context: /
Item: (counseling-23)
-->

   <rule context="/" id="d15e15109-false-d427743e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]) &gt;= 1">(counseling-23): element hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]) &lt;= 1">(counseling-23): element hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.80
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]
Item: (counseling-23)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]"
         id="d15e15120-false-d427866e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(counseling-23): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(counseling-23): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:creationTime[not(@nullFlavor)]) &gt;= 1">(counseling-23): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:creationTime[not(@nullFlavor)]) &lt;= 1">(counseling-23): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &gt;= 1">(counseling-23): element hl7:versionCode[@code = 'NICTIZEd2005-Okt'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &lt;= 1">(counseling-23): element hl7:versionCode[@code = 'NICTIZEd2005-Okt'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &gt;= 1">(counseling-23): element hl7:interactionId[@root = '2.16.840.1.113883.1.6'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &lt;= 1">(counseling-23): element hl7:interactionId[@root = '2.16.840.1.113883.1.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810']) &gt;= 1">(counseling-23): element hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810']) &lt;= 1">(counseling-23): element hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:processingCode[@code = 'P']) &gt;= 1">(counseling-23): element hl7:processingCode[@code = 'P'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:processingCode[@code = 'P']) &lt;= 1">(counseling-23): element hl7:processingCode[@code = 'P'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:processingModeCode[@code = 'T']) &gt;= 1">(counseling-23): element hl7:processingModeCode[@code = 'T'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:processingModeCode[@code = 'T']) &lt;= 1">(counseling-23): element hl7:processingModeCode[@code = 'T'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:acceptAckCode[@code = 'AL' or @code = 'NE']) &gt;= 1">(counseling-23): element hl7:acceptAckCode[@code = 'AL' or @code = 'NE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:acceptAckCode[@code = 'AL' or @code = 'NE']) &lt;= 1">(counseling-23): element hl7:acceptAckCode[@code = 'AL' or @code = 'NE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:receiver[hl7:device]) &gt;= 1">(counseling-23): element hl7:receiver[hl7:device] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:receiver[hl7:device]) &lt;= 1">(counseling-23): element hl7:receiver[hl7:device] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:sender[not(@nullFlavor)][hl7:device]) &gt;= 1">(counseling-23): element hl7:sender[not(@nullFlavor)][hl7:device] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:sender[not(@nullFlavor)][hl7:device]) &lt;= 1">(counseling-23): element hl7:sender[not(@nullFlavor)][hl7:device] komt te vaak voor [max 1x].</assert>
      <let name="transmission" value="."/>
      <let name="interactionId" value="$transmission/local-name()"/>
      <let name="interactionVocabFile"
           value="'../vocab/2.16.840.1.113883.1.6.xml'"/>
      <let name="interactionVocab"
           value="if (doc-available($interactionVocabFile)) then doc($interactionVocabFile) else ()"/>
      <let name="interactionName"
           value="$interactionVocab/*/hl7:code[@code=$interactionId]/@displayName"/>
      <let name="isActive"
           value="not(exists($interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='Actief'][@value='false']))"/>
      <let name="allowBsn"
           value="exists($interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='AttentionLineMetBsn'][@value='true'])"/>
      <let name="allowContextCode"
           value="exists($interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='AttentionLineMetContextCode'][@value='true'])"/>
      <let name="senderGbpOrGbk"
           value="exists($transmission/hl7:ControlActProcess/hl7:authorOrPerformer/hl7:participant/hl7:AssignedPerson/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.3.11.8','2.16.840.1.113883.2.4.3.11.6')])"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="$interactionVocab">(counseling-23): Transmission: <value-of select="$interactionVocabFile"/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or $isActive">(counseling-23): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet (meer) Actief in <value-of select="$interactionVocabFile"/>
            </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']">(counseling-23): Transmission: er moet in deze interactie exact één AttentionLine met BSN zitten - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or  not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']">(counseling-23): Transmission: er moet in deze interactie exact één AttentionLine met de ContextCode zitten - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk">(counseling-23): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet geconfigureerd voor gebruik van het element <value-of select="local-name()"/> voor BSN in <value-of select="$interactionVocabFile"/> en afzender is niet GBK of GBP</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk">(counseling-23): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet geconfigureerd voor gebruik van het element <value-of select="local-name()"/> voor ContextCode in <value-of select="$interactionVocabFile"/> en afzender is niet GBK of GBP</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1">(counseling-23): Transmission: er mag maximaal één AttentionLine met BSN zijn - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1">(counseling-23): Transmission: er mag maximaal één AttentionLine met de ContextCode zijn - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]) &gt;= 1">(counseling-23): element hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]) &lt;= 1">(counseling-23): element hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]"
         id="d428090e37-false-d428098e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@root and @extension">(MCCI_MT000100_peri): Transmission: id element mist root of extension</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:creationTime[not(@nullFlavor)]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:creationTime[not(@nullFlavor)]"
         id="d428090e46-false-d428111e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(*)">(MCCI_MT000100_peri): <value-of select="local-name()"/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:versionCode[@code = 'NICTIZEd2005-Okt']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:versionCode[@code = 'NICTIZEd2005-Okt']"
         id="d428090e55-false-d428128e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='NICTIZEd2005-Okt')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'NICTIZEd2005-Okt''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:interactionId[@root = '2.16.840.1.113883.1.6']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:interactionId[@root = '2.16.840.1.113883.1.6']"
         id="d428090e63-false-d428148e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@root) = ('2.16.840.1.113883.1.6')">(MCCI_MT000100_peri): de waarde van root MOET '2.16.840.1.113883.1.6' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension">(MCCI_MT000100_peri): Transmission: @extension moet overeenkomen met het startelement van het bericht</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810']"
         id="d428090e74-false-d428167e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.1')">(MCCI_MT000100_peri): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@extension) = ('810')">(MCCI_MT000100_peri): de waarde van extension MOET '810' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:processingCode[@code = 'P']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:processingCode[@code = 'P']"
         id="d428090e84-false-d428192e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='P')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'P''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:processingModeCode[@code = 'T']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:processingModeCode[@code = 'T']"
         id="d428090e93-false-d428212e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='T')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'T''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:acceptAckCode[@code = 'AL' or @code = 'NE']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:acceptAckCode[@code = 'AL' or @code = 'NE']"
         id="d428090e101-false-d428232e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='AL') or (@code='NE')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'AL' of code 'NE''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.120
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (TransmissionWrapperAttentionLine)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d428248e18-false-d428258e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(TransmissionWrapperAttentionLine): element hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(TransmissionWrapperAttentionLine): element hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(TransmissionWrapperAttentionLine): element hl7:value[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(TransmissionWrapperAttentionLine): element hl7:value[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.120
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (TransmissionWrapperAttentionLine)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d428248e23-false-d428301e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperAttentionLine): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="@nullFlavor or not(@code) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(TransmissionWrapperAttentionLine): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.102.11.1 AttentionLineElementTypeNL (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.120
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:value[not(@nullFlavor)]
Item: (TransmissionWrapperAttentionLine)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:value[not(@nullFlavor)]"
         id="d428248e37-false-d428325e0">
      <extends rule="ANY"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="@xsi:type">(TransmissionWrapperAttentionLine): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]"
         id="d428090e117-false-d428341e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@typeCode) = ('RCV') or not(@typeCode)">(MCCI_MT000100_peri): de waarde van typeCode MOET 'RCV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)]) &gt;= 1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)]) &lt;= 1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]"
         id="d428371e25-false-d428379e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:name) &lt;= 1">(TransmissionWrapperDevicePeri): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d428371e30-false-d428412e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@root">(TransmissionWrapperDevicePeri): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@extension">(TransmissionWrapperDevicePeri): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name"
         id="d428371e40-false-d428435e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]"
         id="d428090e126-false-d428450e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@typeCode) = ('SND') or not(@typeCode)">(MCCI_MT000100_peri): de waarde van typeCode MOET 'SND' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)]) &gt;= 1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)]) &lt;= 1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]"
         id="d428480e25-false-d428488e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:name) &lt;= 1">(TransmissionWrapperDevicePeri): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d428480e30-false-d428521e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@root">(TransmissionWrapperDevicePeri): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@extension">(TransmissionWrapperDevicePeri): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name"
         id="d428480e40-false-d428544e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.80
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]
Item: (counseling-23)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]"
         id="d15e15124-false-d428591e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="string(@moodCode) = ('EVN')">(counseling-23): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:effectiveTime) &lt;= 1">(counseling-23): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:authorOrPerformer[not(@nullFlavor)][@typeCode][hl7:participant]) &gt;= 1">(counseling-23): element hl7:authorOrPerformer[not(@nullFlavor)][@typeCode][hl7:participant] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:authorOrPerformer[not(@nullFlavor)][@typeCode][hl7:participant]) &lt;= 1">(counseling-23): element hl7:authorOrPerformer[not(@nullFlavor)][@typeCode][hl7:participant] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="count(hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]) &lt;= 1">(counseling-23): element hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson] komt te vaak voor [max 1x].</assert>
      <let name="controlActProcess" value="."/>
      <let name="authorEntity"
           value="$controlActProcess/hl7:authorOrPerformer//hl7:*[lower-case(local-name())=('assigneddevice','assignedperson')][1]"/>
      <let name="authorDevice"
           value="$authorEntity[lower-case(local-name())='assigneddevice']"/>
      <let name="authorPerson"
           value="$authorEntity[lower-case(local-name())='assignedperson']"/>
      <let name="overseerPerson"
           value="$controlActProcess/hl7:overseer//hl7:*[lower-case(local-name())=('assignedentity','assignedperson')][1]"/>
      <let name="authorPath"
           value="string-join($authorEntity/ancestor-or-self::*/name(),'/')"/>
      <let name="overseerPath"
           value="string-join($overseerPerson/ancestor-or-self::*/name(),'/')"/>
      <let name="senderApplicationId"
           value="$controlActProcess/../hl7:sender/hl7:device/hl7:id[@root='2.16.840.1.113883.2.4.6.6']/@extension"/>
      <let name="authorApplicationId"
           value="$authorDevice/hl7:id[@root='2.16.840.1.113883.2.4.6.6']/@extension"/>
      <let name="overseerOrgId" value="$overseerPerson/hl7:Organization/hl7:id"/>
      <let name="authorOrgId" value="$authorEntity/hl7:Organization/hl7:id"/>
      <let name="interactionId" value="$controlActProcess/../local-name()"/>
      <let name="interactionVocabFile"
           value="'../vocab/2.16.840.1.113883.1.6.xml'"/>
      <let name="interactionVocab"
           value="if (doc-available($interactionVocabFile)) then doc($interactionVocabFile) else ()"/>
      <let name="interactionTrustLevel"
           value="$interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='Vertrouwensniveau']/@value"/>
      <let name="interactionSendType"
           value="$interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='Verzendtype']/@value"/>
      <let name="interactionTriggerEventCode"
           value="$interactionVocab/*/hl7:code[@code=$interactionId]/hl7:reference/@extension"/>
      <let name="messageTriggerEventCode"
           value="$controlActProcess/hl7:code/@code"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="$interactionVocab">(counseling-23): Control Act: <value-of select="$interactionVocabFile"/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN']">(counseling-23): Control Act: <value-of select="local-name()"/>/@moodCode moet 'EVN' zijn bij queries</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode">(counseling-23): Control Act: <value-of select="local-name()"/>/code (Trigger Event) moet bij deze interactie '<value-of select="$interactionTriggerEventCode"/>' zijn, gevonden is echter '<value-of select="$messageTriggerEventCode"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag'">(counseling-23): Control Act: <value-of select="local-name()"/>/authorOrPerformer moet een persoon bevatten in berichten met vertrouwensniveau midden of hoog</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag'">(counseling-23): Control Act: <value-of select="local-name()"/>/overseer moet de mandaterende persoon bevatten in berichten met vertrouwensniveau midden of hoog</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine">(counseling-23): Patiëntgebonden interacties, verzonden vanuit een patiëntenportaal (GBP), moeten een attentionLine hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine">(counseling-23): Patiëntgebonden interacties, verzonden vanuit het klantenloket (GBK), moeten een attentionLine hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1'">(counseling-23): Control Act: <value-of select="$authorPath"/>/id. Applicatie-id <value-of select="$authorApplicationId"/> komt niet overeen met Transmission-wrapper sender <value-of select="$senderApplicationId"/>.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']">(counseling-23): Control Act: <value-of select="$authorPath"/>/id moet tenminste het UZI-nummer systemen bevatten voor een XIS in een GBZ</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension]">(counseling-23): Control Act: <value-of select="$authorPath"/>/id moet de zorgaanbieder van het XIS identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P']">(counseling-23): Control Act: <value-of select="$authorPath"/>/code/@code moet "P" (Patiënt) zijn. Wettelijke vertegenwoordigers moet dit via het Klantenloket doen en kunnen dus niet als auteur optreden</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET']">(counseling-23): Control Act: <value-of select="$authorPath"/>/code/@code moet "KLANTENLOKET" zijn voor klantenloketmedewerkers</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111']">(counseling-23): Control Act: <value-of select="$authorPath"/>/code ontbreekt. Dit is alleen toegestaan als de rolcode 00.000 is.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension]">(counseling-23): Control Act: <value-of select="$authorPath"/>/Organization/id moet de zorgaanbieder van de persoon identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25']">(counseling-23): Control Act: <value-of select="$authorPath"/>/Organization/id/@root moet '2.16.840.1.113883.2.4.3.11.25' bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']">(counseling-23): Control Act: <value-of select="$authorPath"/>/Organization/id moet de Nictiz-klantenloket organisatie identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3'])">(counseling-23): Control Act: <value-of select="$authorPath"/>/Organization/name moet de zorgaanbieder/organisatienaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7'])">(counseling-23): Control Act: <value-of select="$authorPath"/>/Organization/name moet de Nictiz-klantenloket organisatienaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson) or $overseerPerson/hl7:code">(counseling-23): Control Act: <value-of select="$overseerPath"/>/code is verplicht</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6']">(counseling-23): Control Act: <value-of select="$overseerPath"/>/code/@code moet "P" (Patiënt) zijn of een geldige waarde uit RoleCodeWettelijkeVertegenwoordigerNL</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name">(counseling-23): Control Act: <value-of select="$overseerPath"/>/assignedPrincipalChoiceList/assignedPerson/name is verplicht</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']">(counseling-23): Control Act: <value-of select="$overseerPath"/>/Organization/id moet de zorgaanbieder van de persoon identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name">(counseling-23): Control Act: <value-of select="$overseerPath"/>//Organization/name moet de zorgaanbiedernaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city">(counseling-23): Control Act: <value-of select="$overseerPath"/>/Organization/addr moet tennminste de vestigingsplaats bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice']">(counseling-23): Control Act: <value-of select="$overseerPath"/>/Organization/id. Organisatie van de overseer (<value-of select="$overseerOrgId/@root"/>#<value-of select="$overseerOrgId/@extension"/>) moet gelijk zijn aan die van de authorOrPerformer (<value-of select="$authorOrgId/@extension"/>)</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901037
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:effectiveTime
Item: (ControlActMasterFileActPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:effectiveTime"
         id="d428762e46-false-d428770e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ControlActMasterFileActPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="not(*)">(ControlActMasterFileActPeriCouns): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]
Item: (ControlActAuthorOrPerformerPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]"
         id="d428781e99-false-d428823e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="@typeCode">(ControlActAuthorOrPerformerPeri): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19080-2011-07-26T000000.xml')/*/valueSet/conceptList/concept/@code))])">(ControlActAuthorOrPerformerPeri): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19080' x_ParticipationAuthorPerformer (2011-07-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="count(hl7:participant[not(@nullFlavor)]) &gt;= 1">(ControlActAuthorOrPerformerPeri): element hl7:participant[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="count(hl7:participant[not(@nullFlavor)]) &lt;= 1">(ControlActAuthorOrPerformerPeri): element hl7:participant[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]
Item: (ControlActAuthorOrPerformerPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]"
         id="d428781e109-false-d428932e0">
      <let name="elmcount"
           value="count(hl7:AssignedDevice | hl7:AssignedPerson[hl7:Organization])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="$elmcount &gt;= 1">(ControlActAuthorOrPerformerPeri): keuze (hl7:AssignedDevice  of  hl7:AssignedPerson[hl7:Organization]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="$elmcount &lt;= 1">(ControlActAuthorOrPerformerPeri): keuze (hl7:AssignedDevice  of  hl7:AssignedPerson[hl7:Organization]) bevat te veel elementen [max 1x]</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice
Item: (ControlActAuthorOrPerformerPeri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice">
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.2'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.6'] | hl7:id[@root = '2.16.528.1.1007.4'] | hl7:id)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="$elmcount &lt;= 2">(COCT_MT090300_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.2']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.6']  of  hl7:id[@root = '2.16.528.1.1007.4']  of  hl7:id) bevat te veel elementen [max 2x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:Organization) &lt;= 1">(COCT_MT090300_peri): element hl7:Organization komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1010
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root = '2.16.528.1.1007.3.2']
Item: (dtUZIsystemen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root = '2.16.528.1.1007.3.2']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1010-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtUZIsystemen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1010-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.2')">(dtUZIsystemen): de waarde van root MOET '2.16.528.1.1007.3.2' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1008
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root = '2.16.840.1.113883.2.4.6.6']
Item: (dtAortaApplicationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root = '2.16.840.1.113883.2.4.6.6']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtAortaApplicationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="@extension">(dtAortaApplicationId): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(dtAortaApplicationId): attribuut @extension MOET datatype 'st' hebben  - '<value-of select="@extension"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.6')">(dtAortaApplicationId): de waarde van root MOET '2.16.840.1.113883.2.4.6.6' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1018
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root = '2.16.528.1.1007.4']
Item: (dtSBV-Zsystemen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root = '2.16.528.1.1007.4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1018-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-Zsystemen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1018-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.4')">(dtSBV-Zsystemen): de waarde van root MOET '2.16.528.1.1007.4' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(COCT_MT090300_peri): attribuut @nullFlavor MOET datatype 'cs' hebben  - '<value-of select="@nullFlavor"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization">
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="$elmcount &gt;= 1">(COCT_MT090300_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.528.1.1007'][@extension = '4']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="$elmcount &lt;= 1">(COCT_MT090300_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.528.1.1007'][@extension = '4']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(COCT_MT090300_peri): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(COCT_MT090300_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(COCT_MT090300_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:addr[hl7:city]) &lt;= 1">(COCT_MT090300_peri): element hl7:addr[hl7:city] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1011
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (dtURAorganization)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.528.1.1007.3.3']">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(dtURAorganization): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1019
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.528.1.1007'][@extension = '4']
Item: (dtSBV-ZOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.528.1.1007'][@extension = '4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007')">(dtSBV-ZOrganizationId): de waarde van root MOET '2.16.528.1.1007' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@extension) = ('4')">(dtSBV-ZOrganizationId): de waarde van extension MOET '4' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1020
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']
Item: (dtGBO-GBP)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.25')">(dtGBO-GBP): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.25' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']
Item: (dtGBKOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11')">(dtGBKOrganizationId): de waarde van root MOET '2.16.840.1.113883.2.4.3.11' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@extension) = ('7')">(dtGBKOrganizationId): de waarde van extension MOET '7' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(COCT_MT090300_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:telecom
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:name[not(@nullFlavor)]">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr[hl7:city]
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr[hl7:city]">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:city[not(@nullFlavor)]) &gt;= 1">(COCT_MT090300_peri): element hl7:city[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:city[not(@nullFlavor)]) &lt;= 1">(COCT_MT090300_peri): element hl7:city[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr[hl7:city]/hl7:city[not(@nullFlavor)]
Item: (COCT_MT090300_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:templateId
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:templateId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090300_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]
Item: (ControlActAuthorOrPerformerPeri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]">
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount &gt;= 1">(COCT_MT090100_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.3']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3']  of  hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(COCT_MT090100_peri): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:telecom) &lt;= 1">(COCT_MT090100_peri): element hl7:telecom komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPrincipalChoiceList[hl7:assignedPerson]) &lt;= 1">(COCT_MT090100_peri): element hl7:assignedPrincipalChoiceList[hl7:assignedPerson] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1009
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (dtUZIpersonen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.528.1.1007.3.1']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtUZIpersonen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(dtUZIpersonen): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1012
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.3']
Item: (dtBSNId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.3']">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBSNId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="@extension">(dtBSNId): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(dtBSNId): attribuut @extension MOET datatype 'st' hebben  - '<value-of select="@extension"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.3')">(dtBSNId): de waarde van root MOET '2.16.840.1.113883.2.4.6.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string-length(@extension) = 9">(dtBSNId): Het BSN dient altijd 9 cijfers te bevatten. Het BSN kan ook voorloopnullen bevatten, oftewel beginnen met een nul.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3']
Item: (dtBatchInzageAuteur)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBatchInzageAuteur): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.7.3')">(dtBatchInzageAuteur): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.7.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1']
Item: (dtNictizKlantenloketPKIO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtNictizKlantenloketPKIO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1003.1.3.5.4.1')">(dtNictizKlantenloketPKIO): de waarde van root MOET '2.16.528.1.1003.1.3.5.4.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1017
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (dtAGB)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtAGB): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(dtAGB): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.2 RoleCodeNL - zorgverlenertype (personen) (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.4 RoleCodeNL - toegang patiënt (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.5 RoleCodeNL - wettelijke vertegenwoording (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111')">(COCT_MT090100_peri): Control Act: <name path=".."/>/<name/> moet een UZI-rolcode 00.000 is niet toegestaan</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:telecom
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]">
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount &gt;= 1">(COCT_MT090100_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.528.1.1007'][@extension = '4']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount &lt;= 1">(COCT_MT090100_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.528.1.1007'][@extension = '4']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(COCT_MT090100_peri): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:addr) &lt;= 1">(COCT_MT090100_peri): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1011
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (dtURAorganization)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007.3.3']">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(dtURAorganization): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1019
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007'][@extension = '4']
Item: (dtSBV-ZOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007'][@extension = '4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007')">(dtSBV-ZOrganizationId): de waarde van root MOET '2.16.528.1.1007' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@extension) = ('4')">(dtSBV-ZOrganizationId): de waarde van extension MOET '4' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1020
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']
Item: (dtGBO-GBP)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.25')">(dtGBO-GBP): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.25' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']
Item: (dtGBKOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11')">(dtGBKOrganizationId): de waarde van root MOET '2.16.840.1.113883.2.4.3.11' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@extension) = ('7')">(dtGBKOrganizationId): de waarde van extension MOET '7' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:telecom
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:city) &lt;= 1">(COCT_MT090100_peri): element hl7:city komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr/hl7:city
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:templateId
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:templateId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901042
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]
Item: (ControlActOverseerPersonMcaiMfmiPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]"
         id="d430148e63-false-d430175e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="string(@typeCode) = ('RESP')">(ControlActOverseerPersonMcaiMfmiPeri): de waarde van typeCode MOET 'RESP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="count(hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]) &gt;= 1">(ControlActOverseerPersonMcaiMfmiPeri): element hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization] is mandatory [min 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901042
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]
Item: (ControlActOverseerPersonMcaiMfmiPeri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]">
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount &gt;= 1">(COCT_MT090100_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.3']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3']  of  hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(COCT_MT090100_peri): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:telecom) &lt;= 1">(COCT_MT090100_peri): element hl7:telecom komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPrincipalChoiceList[hl7:assignedPerson]) &lt;= 1">(COCT_MT090100_peri): element hl7:assignedPrincipalChoiceList[hl7:assignedPerson] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1009
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (dtUZIpersonen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.528.1.1007.3.1']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtUZIpersonen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(dtUZIpersonen): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1012
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.3']
Item: (dtBSNId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.3']">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBSNId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="@extension">(dtBSNId): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(dtBSNId): attribuut @extension MOET datatype 'st' hebben  - '<value-of select="@extension"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.3')">(dtBSNId): de waarde van root MOET '2.16.840.1.113883.2.4.6.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string-length(@extension) = 9">(dtBSNId): Het BSN dient altijd 9 cijfers te bevatten. Het BSN kan ook voorloopnullen bevatten, oftewel beginnen met een nul.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3']
Item: (dtBatchInzageAuteur)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBatchInzageAuteur): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.7.3')">(dtBatchInzageAuteur): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.7.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1']
Item: (dtNictizKlantenloketPKIO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtNictizKlantenloketPKIO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1003.1.3.5.4.1')">(dtNictizKlantenloketPKIO): de waarde van root MOET '2.16.528.1.1003.1.3.5.4.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1017
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (dtAGB)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtAGB): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(dtAGB): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.2 RoleCodeNL - zorgverlenertype (personen) (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.4 RoleCodeNL - toegang patiënt (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.5 RoleCodeNL - wettelijke vertegenwoording (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111')">(COCT_MT090100_peri): Control Act: <name path=".."/>/<name/> moet een UZI-rolcode 00.000 is niet toegestaan</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:telecom
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]">
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount &gt;= 1">(COCT_MT090100_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.528.1.1007'][@extension = '4']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount &lt;= 1">(COCT_MT090100_peri): keuze (hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.528.1.1007'][@extension = '4']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(COCT_MT090100_peri): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:addr) &lt;= 1">(COCT_MT090100_peri): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1011
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (dtURAorganization)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007.3.3']">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(dtURAorganization): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1019
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007'][@extension = '4']
Item: (dtSBV-ZOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.528.1.1007'][@extension = '4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@root) = ('2.16.528.1.1007')">(dtSBV-ZOrganizationId): de waarde van root MOET '2.16.528.1.1007' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@extension) = ('4')">(dtSBV-ZOrganizationId): de waarde van extension MOET '4' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1020
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']
Item: (dtGBO-GBP)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.25')">(dtGBO-GBP): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.25' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']
Item: (dtGBKOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11')">(dtGBKOrganizationId): de waarde van root MOET '2.16.840.1.113883.2.4.3.11' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@extension) = ('7')">(dtGBKOrganizationId): de waarde van extension MOET '7' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:telecom
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:city) &lt;= 1">(COCT_MT090100_peri): element hl7:city komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr/hl7:city
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:templateId
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:templateId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(COCT_MT090100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901037
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]
Item: (ControlActMasterFileActPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]"
         id="d428762e74-false-d430941e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="string(@typeCode) = ('SUBJ') or not(@typeCode)">(ControlActMasterFileActPeriCouns): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="string(@contextConductionInd) = ('false') or not(@contextConductionInd)">(ControlActMasterFileActPeriCouns): de waarde van contextConductionInd MOET 'false' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="count(hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]) &gt;= 1">(ControlActMasterFileActPeriCouns): element hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="count(hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]) &lt;= 1">(ControlActMasterFileActPeriCouns): element hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]"
         id="d431045e13-false-d431121e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@classCode) = ('REG') or not(@classCode)">(RegistrationEventACTPeriCouns): de waarde van classCode MOET 'REG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="@moodCode">(RegistrationEventACTPeriCouns): attribute @moodCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(@moodCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.10196-2011-07-26T000000.xml')/*/valueSet/conceptList/concept/@code))])">(RegistrationEventACTPeriCouns): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10196' ActMood (2011-07-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:statusCode[@code = 'active' or @nullFlavor]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:statusCode[@code = 'active' or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:statusCode[@code = 'active' or @nullFlavor]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:statusCode[@code = 'active' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:effectiveTime[not(@value)]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:effectiveTime[not(@value)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:effectiveTime[not(@value)]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:effectiveTime[not(@value)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:subject1) = 0">(RegistrationEventACTPeriCouns): element hl7:subject1 MAG NIET voorkomen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:id
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:id"
         id="d431045e22-false-d431293e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="sendingId"
           value="string-join(../../../../hl7:sender/hl7:device/hl7:id/(@root|@extension),'#')"/>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]"
         id="d431045e27-false-d431306e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="@nullFlavor or (@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')">(RegistrationEventACTPeriCouns): de elementwaarde MOET een zijn van 'code '900000' codeSystem '2.16.840.1.113883.2.4.15.4''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code = 'active' or @nullFlavor]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code = 'active' or @nullFlavor]"
         id="d431045e32-false-d431326e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="@nullFlavor or (@code='active')">(RegistrationEventACTPeriCouns): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime[not(@value)]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime[not(@value)]"
         id="d431045e38-false-d431346e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(@value)">(RegistrationEventACTPeriCouns): attribute @value MAG NIET voorkomen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@nullFlavor) = ('UNK') or not(@nullFlavor)">(RegistrationEventACTPeriCouns): de waarde van nullFlavor MOET 'UNK' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:low) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:low komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime[not(@value)]/hl7:low
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime[not(@value)]/hl7:low"
         id="d431045e44-false-d431379e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@nullFlavor) = ('UNK') or not(@nullFlavor)">(RegistrationEventACTPeriCouns): de waarde van nullFlavor MOET 'UNK' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject1
Item: (RegistrationEventACTPeriCouns)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]"
         id="d431045e55-false-d431471e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]"
         id="d431045e57-false-d431631e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@classCode) = ('PCPR')">(RegistrationEventACTPeriCouns): de waarde van classCode MOET 'PCPR' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@moodCode) = ('EVN')">(RegistrationEventACTPeriCouns): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:statusCode[@code = 'active' or @nullFlavor]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:statusCode[@code = 'active' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ']) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ']) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']"
         id="d431045e63-false-d431859e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.80')">(RegistrationEventACTPeriCouns): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.80' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:statusCode[@code = 'active' or @nullFlavor]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:statusCode[@code = 'active' or @nullFlavor]"
         id="d431045e68-false-d431878e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCouns): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="@nullFlavor or (@code='active')">(RegistrationEventACTPeriCouns): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']"
         id="d431892e27-false-d431910e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="string(@typeCode) = ('SBJ')">(Vrouwcounseling2): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']"
         id="d431892e39-false-d431949e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="string(@classCode) = ('PAT')">(Vrouwcounseling2): de waarde van classCode MOET 'PAT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:id)&gt;0">(Vrouwcounseling2): identification mother requires either a BSN or a local id or both</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Vrouwcounseling2): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Vrouwcounseling2): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:addr) &gt;= 1">(Vrouwcounseling2): element hl7:addr is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:addr) &lt;= 1">(Vrouwcounseling2): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(Vrouwcounseling2): element hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(Vrouwcounseling2): element hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900028
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:id"
         id="d432023e5-false-d432031e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.3') or not(@root)">(Burgerservicenummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900148
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:addr
Item: (Adresvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:addr"
         id="d432044e5-false-d432052e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="@use">(Adresvrouw): attribute @use MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('HP','PHYS','TMP','HP PHYS','TMP PHYS')))])">(Adresvrouw): de waarde van use MOET 'code HP of code PHYS of code TMP of code HP PHYS of code TMP PHYS' zijn. Gevonden: "<value-of select="@use"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="count(hl7:postalCode) &gt;= 1">(Adresvrouw): element hl7:postalCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(Adresvrouw): element hl7:postalCode komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900148
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:addr/hl7:postalCode
Item: (Adresvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:addr/hl7:postalCode"
         id="d432044e38-false-d432111e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Adresvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d431892e50-false-d432132e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="string(@classCode) = ('PSN')">(Vrouwcounseling2): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="string(@determinerCode) = ('INSTANCE')">(Vrouwcounseling2): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:name) &gt;= 1">(Vrouwcounseling2): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:name) &lt;= 2">(Vrouwcounseling2): element hl7:name komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:birthTime[not(@nullFlavor)]) &gt;= 1">(Vrouwcounseling2): element hl7:birthTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:birthTime[not(@nullFlavor)]) &lt;= 1">(Vrouwcounseling2): element hl7:birthTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Vrouwcounseling2): element hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="count(hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Vrouwcounseling2): element hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900925
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (Naamvrouw2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d432212e5-false-d432220e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900925-2014-01-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamvrouw2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (Geboortedatumvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d432227e5-false-d432235e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html"
              test="not(*)">(Geboortedatumvrouw): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900033
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Etniciteit)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[@classCode = 'PAT']/hl7:patientPerson[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d432246e5-false-d432256e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Etniciteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Etniciteit): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Etniciteit): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]"
         id="d431045e81-false-d432294e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('LA')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'LA' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]"
         id="d431045e85-false-d432346e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@classCode) = ('ASSIGNED')">(RegistrationEventACTPeriCouns): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (RegistrationEventACTPeriCouns)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d431045e89-false-d432398e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@classCode) = ('ORG')">(RegistrationEventACTPeriCouns): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@determinerCode) = ('INSTANCE')">(RegistrationEventACTPeriCouns): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]) &gt;= 1">(RegistrationEventACTPeriCouns): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="count(hl7:name) &lt;= 1">(RegistrationEventACTPeriCouns): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]"
         id="d432498e7-false-d432504e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2016-12-02T102921.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901072
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (ZorginstellingIdentificatieCns)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']"
         id="d432514e7-false-d432522e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (ZorginstellingURA)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d432540e5-false-d432548e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingURA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(ZorginstellingURA): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="@extension">(ZorginstellingURA): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900610
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (ZorginstellingAGBID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d432566e5-false-d432574e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(ZorginstellingAGBID): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="@extension">(ZorginstellingAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900025
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (Naamzorginstelling)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode = 'LA'][hl7:assignedPerson[@classCode = 'ASSIGNED']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d432592e5-false-d432600e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900025-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorginstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]">
      <extends rule="d432635e0-false-d432641e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900934
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]
Item: (RedenVerzendingCounselingBericht)
-->
   <rule id="d432635e0-false-d432641e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="count(hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]) &gt;= 1">(RedenVerzendingCounselingBericht): element hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="count(hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]) &lt;= 1">(RedenVerzendingCounselingBericht): element hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900934
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]
Item: (RedenVerzendingCounselingBericht)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="string(@classCode) = ('OBS')">(RedenVerzendingCounselingBericht): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="string(@moodCode) = ('EVN')">(RedenVerzendingCounselingBericht): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="count(hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]) &gt;= 1">(RedenVerzendingCounselingBericht): element hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="count(hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]) &lt;= 1">(RedenVerzendingCounselingBericht): element hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(RedenVerzendingCounselingBericht): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(RedenVerzendingCounselingBericht): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900934
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]/hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]
Item: (RedenVerzendingCounselingBericht)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]/hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="@nullFlavor or (@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')">(RedenVerzendingCounselingBericht): de elementwaarde MOET een zijn van 'code 'RedenVerzending' codeSystem '2.16.840.1.113883.2.4.4.13.53''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900934
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (RedenVerzendingCounselingBericht)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code = 'RedenVerzending' and @codeSystem = '2.16.840.1.113883.2.4.4.13.53')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerzendingCounselingBericht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900934-2014-04-14T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(RedenVerzendingCounselingBericht): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.1 Reden Verzending Counseling Bericht (2014-04-14T14:30:59)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="string(@classCode) = ('OBS')">(Graviditeit): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="string(@moodCode) = ('EVN')">(Graviditeit): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']) &gt;= 1">(Graviditeit): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']) &lt;= 1">(Graviditeit): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Graviditeit): element hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Graviditeit): element hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Graviditeit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900004')">(Graviditeit): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900004' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Graviditeit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Graviditeit): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Graviditeit): attribuut @nullFlavor MOET datatype 'cs' hebben  - '<value-of select="@nullFlavor"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]
Item: (EDDdefinitive)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@classCode) = ('OBS')">(EDDdefinitive): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@moodCode) = ('EVN')">(EDDdefinitive): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']) &gt;= 1">(EDDdefinitive): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']) &lt;= 1">(EDDdefinitive): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EDDdefinitive): element hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EDDdefinitive): element hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(EDDdefinitive): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(EDDdefinitive): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDdefinitive): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900928')">(EDDdefinitive): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900928' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDdefinitive): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="@nullFlavor or (@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDdefinitive): de elementwaarde MOET een zijn van 'code 'EDDDef' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="not(*)">(EDDdefinitive): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="@xsi:type">(EDDdefinitive): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Prenatalescreeningaangekaart)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Prenatalescreeningaangekaart)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="string(@classCode) = ('OBS')">(Prenatalescreeningaangekaart): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="string(@moodCode) = ('EVN')">(Prenatalescreeningaangekaart): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="count(hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Prenatalescreeningaangekaart): element hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="count(hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Prenatalescreeningaangekaart): element hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Prenatalescreeningaangekaart): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Prenatalescreeningaangekaart): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Prenatalescreeningaangekaart)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Prenatalescreeningaangekaart): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="@nullFlavor or (@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Prenatalescreeningaangekaart): de elementwaarde MOET een zijn van 'code 'BroachDown' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Prenatalescreeningaangekaart)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="@nullFlavor or ($xsiLocalName='BL' and $xsiLocalNS='urn:hl7-org:v3')">(Prenatalescreeningaangekaart): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2014-06-12T000000.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NI')))])">(Prenatalescreeningaangekaart): de waarde van nullFlavor MOET 'code NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalegewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Counselingprenatalegewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Counselingprenatalegewenst): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Counselingprenatalegewenst): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Counselingprenatalegewenst): element hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Counselingprenatalegewenst): element hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Counselingprenatalegewenst): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Counselingprenatalegewenst): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Counselingprenatalegewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Counselingprenatalegewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="@nullFlavor or (@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Counselingprenatalegewenst): de elementwaarde MOET een zijn van 'code 'CounselDesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Counselingprenatalegewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Counselingprenatalegewenst): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.7 DownSEOCounselingDesired (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Counselingprenatalegewenst): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.7 DownSEOCounselingDesired (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="@xsi:type">(Counselingprenatalegewenst): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]
Item: (CounselingPrenataleScreeningCombinatieTest)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]
Item: (CounselingPrenataleScreeningCombinatieTest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="string(@classCode) = ('ENC')">(CounselingPrenataleScreeningCombinatieTest): de waarde van classCode MOET 'ENC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="string(@moodCode) = ('EVN')">(CounselingPrenataleScreeningCombinatieTest): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="not((hl7:outboundRelationship/hl7:act[hl7:code[@code='IPDDesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']]/@negationInd='false') and (hl7:outboundRelationship/hl7:act[hl7:code[@code='CombiTestDesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']]))">(CounselingPrenataleScreeningCombinatieTest): Als Direct IPD gewenst, dan geen combinatietest.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']) &gt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]) &gt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &gt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="count(hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CounselingPrenataleScreeningCombinatieTest): element hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']
Item: (CounselingPrenataleScreeningCombinatieTest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CounselingPrenataleScreeningCombinatieTest): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900932')">(CounselingPrenataleScreeningCombinatieTest): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900932' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:id[@nullFlavor = 'NI']
Item: (CounselingPrenataleScreeningCombinatieTest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:id[@nullFlavor = 'NI']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="string(@nullFlavor) = ('NI')">(CounselingPrenataleScreeningCombinatieTest): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]
Item: (CounselingPrenataleScreeningCombinatieTest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CounselingPrenataleScreeningCombinatieTest): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="@nullFlavor or (@code='1' and @codeSystem='2.16.840.1.113883.2.4.4.13.31' and @displayName='combinatietest')">(CounselingPrenataleScreeningCombinatieTest): de elementwaarde MOET een zijn van 'code '1' codeSystem '2.16.840.1.113883.2.4.4.13.31' displayName='combinatietest''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900227
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:effectiveTime
Item: (Datumcounseling)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Datumcounseling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html"
              test="not(*)">(Datumcounseling): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901073
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]
Item: (ZorgverlenerenPerformer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@typeCode) = ('PRF')">(ZorgverlenerenPerformer): de waarde van typeCode MOET 'PRF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]) &gt;= 1">(ZorgverlenerenPerformer): element hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]) &lt;= 1">(ZorgverlenerenPerformer): element hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901073
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]
Item: (ZorgverlenerenPerformer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@classCode) = ('ASSIGNED')">(ZorgverlenerenPerformer): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="$elmcount &gt;= 1">(ZorgverlenerenPerformer): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &gt;= 1">(ZorgverlenerenPerformer): element hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900702
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (ZorgverlenerUZInummer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.528.1.1007.3.1']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerUZInummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(ZorgverlenerUZInummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerUZInummer): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900703
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (ZorgverlenerAGBID)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(ZorgverlenerAGBID): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900704
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']
Item: (ZorgverlenerLVR1ID)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerLVR1ID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.98.2')">(ZorgverlenerLVR1ID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerLVR1ID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901073
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (ZorgverlenerenPerformer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@classCode) = ('PSN')">(ZorgverlenerenPerformer): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@determinerCode) = ('INSTANCE')">(ZorgverlenerenPerformer): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (Naamzorgverlener)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name
Item: (Naamzorgverlener)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900006-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CounselingPrenataleScreeningCombinatieTest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="string(@typeCode) = ('PERT')">(CounselingPrenataleScreeningCombinatieTest): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900231
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (DirectIPDgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900231
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (DirectIPDgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="string(@classCode) = ('CONS')">(DirectIPDgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="string(@moodCode) = ('INT')">(DirectIPDgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="@negationInd">(DirectIPDgewenst): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(DirectIPDgewenst): element hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(DirectIPDgewenst): element hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900231
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (DirectIPDgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DirectIPDgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2014-06-11T000000.html"
              test="@nullFlavor or (@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(DirectIPDgewenst): de elementwaarde MOET een zijn van 'code 'IPDDesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900932
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CounselingPrenataleScreeningCombinatieTest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900932-2016-12-16T115420.html"
              test="string(@typeCode) = ('PERT')">(CounselingPrenataleScreeningCombinatieTest): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900232
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Combinatietestgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900232
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Combinatietestgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="string(@classCode) = ('CONS')">(Combinatietestgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="string(@moodCode) = ('INT')">(Combinatietestgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="@negationInd">(Combinatietestgewenst): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Combinatietestgewenst): element hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Combinatietestgewenst): element hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900232
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Combinatietestgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Combinatietestgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2014-06-11T000000.html"
              test="@nullFlavor or (@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Combinatietestgewenst): de elementwaarde MOET een zijn van 'code 'CombiTestDesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901036
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]
Item: (RegistrationEventACTPeriCouns)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@typeCode) = ('PERT')">(RegistrationEventACTPeriCouns): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="string(@contextConductionInd) = ('true')">(RegistrationEventACTPeriCouns): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]
Item: (CounselingPrenataleScreeningSEO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]
Item: (CounselingPrenataleScreeningSEO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="string(@classCode) = ('ENC')">(CounselingPrenataleScreeningSEO): de waarde van classCode MOET 'ENC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="string(@moodCode) = ('EVN')">(CounselingPrenataleScreeningSEO): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="not((hl7:outboundRelationship/hl7:act[hl7:code[@code='InstantGUODesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']]/@negationInd='false') and (hl7:outboundRelationship/hl7:act[hl7:code[@code='SEODesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']]))">(CounselingPrenataleScreeningSEO): Als Direct GUO gewenst, dan geen SEO.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']) &gt;= 1">(CounselingPrenataleScreeningSEO): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(CounselingPrenataleScreeningSEO): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]) &gt;= 1">(CounselingPrenataleScreeningSEO): element hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(CounselingPrenataleScreeningSEO): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &gt;= 1">(CounselingPrenataleScreeningSEO): element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CounselingPrenataleScreeningSEO): element hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="count(hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CounselingPrenataleScreeningSEO): element hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']
Item: (CounselingPrenataleScreeningSEO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CounselingPrenataleScreeningSEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900933')">(CounselingPrenataleScreeningSEO): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900933' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:id[@nullFlavor = 'NI']
Item: (CounselingPrenataleScreeningSEO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:id[@nullFlavor = 'NI']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="string(@nullFlavor) = ('NI')">(CounselingPrenataleScreeningSEO): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]
Item: (CounselingPrenataleScreeningSEO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:code[(@code = '2' and @codeSystem = '2.16.840.1.113883.2.4.4.13.31')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CounselingPrenataleScreeningSEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="@nullFlavor or (@code='2' and @codeSystem='2.16.840.1.113883.2.4.4.13.31' and @displayName='SEO')">(CounselingPrenataleScreeningSEO): de elementwaarde MOET een zijn van 'code '2' codeSystem '2.16.840.1.113883.2.4.4.13.31' displayName='SEO''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900227
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:effectiveTime
Item: (Datumcounseling)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Datumcounseling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html"
              test="not(*)">(Datumcounseling): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901073
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]
Item: (ZorgverlenerenPerformer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@typeCode) = ('PRF')">(ZorgverlenerenPerformer): de waarde van typeCode MOET 'PRF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]) &gt;= 1">(ZorgverlenerenPerformer): element hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]) &lt;= 1">(ZorgverlenerenPerformer): element hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901073
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]
Item: (ZorgverlenerenPerformer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@classCode) = ('ASSIGNED')">(ZorgverlenerenPerformer): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="$elmcount &gt;= 1">(ZorgverlenerenPerformer): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &gt;= 1">(ZorgverlenerenPerformer): element hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(ZorgverlenerenPerformer): element hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900702
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (ZorgverlenerUZInummer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.528.1.1007.3.1']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerUZInummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(ZorgverlenerUZInummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerUZInummer): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900703
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (ZorgverlenerAGBID)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(ZorgverlenerAGBID): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900704
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']
Item: (ZorgverlenerLVR1ID)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerLVR1ID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.98.2')">(ZorgverlenerLVR1ID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerLVR1ID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901073
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (ZorgverlenerenPerformer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@classCode) = ('PSN')">(ZorgverlenerenPerformer): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="string(@determinerCode) = ('INSTANCE')">(ZorgverlenerenPerformer): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (Naamzorgverlener)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name
Item: (Naamzorgverlener)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[@classCode = 'ASSIGNED'][hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']]/hl7:assignedPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900006-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CounselingPrenataleScreeningSEO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="string(@typeCode) = ('PERT')">(CounselingPrenataleScreeningSEO): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900235
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (DirectGUOgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900235
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (DirectGUOgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="string(@classCode) = ('CONS')">(DirectGUOgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="string(@moodCode) = ('INT')">(DirectGUOgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="@negationInd">(DirectGUOgewenst): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(DirectGUOgewenst): element hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(DirectGUOgewenst): element hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900235
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (DirectGUOgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DirectGUOgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2014-06-11T000000.html"
              test="@nullFlavor or (@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(DirectGUOgewenst): de elementwaarde MOET een zijn van 'code 'InstantGUODesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900933
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CounselingPrenataleScreeningSEO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900933-2016-12-16T115807.html"
              test="string(@typeCode) = ('PERT')">(CounselingPrenataleScreeningSEO): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900234
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (SEOgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900234
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (SEOgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="string(@classCode) = ('CONS')">(SEOgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="string(@moodCode) = ('INT')">(SEOgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="@negationInd">(SEOgewenst): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(SEOgewenst): element hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="count(hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(SEOgewenst): element hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900234
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (SEOgewenst)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'][hl7:authorOrPerformer[@typeCode]]/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code = '900000' and @codeSystem = '2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SEOgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2014-06-11T000000.html"
              test="@nullFlavor or (@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(SEOgewenst): de elementwaarde MOET een zijn van 'code 'SEODesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
</pattern>
