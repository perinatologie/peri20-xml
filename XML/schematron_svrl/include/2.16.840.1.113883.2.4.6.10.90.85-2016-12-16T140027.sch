<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.85
Name: Combinatietest
Description: Template: Combinatietest (CT) naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027">
   <title>Combinatietest</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.85
Context: /
Item: (combinatietest)
-->

   <rule context="/" id="d19e6663-false-d290666e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&gt;=1">(combinatietest): element hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&lt;=1">(combinatietest): element hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.85
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]
Item: (combinatietest)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]"
         id="d19e6672-false-d290938e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(combinatietest): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(combinatietest): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:creationTime[not(@nullFlavor)])&gt;=1">(combinatietest): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:creationTime[not(@nullFlavor)])&lt;=1">(combinatietest): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1">(combinatietest): element hl7:versionCode[@code='NICTIZEd2005-Okt'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1">(combinatietest): element hl7:versionCode[@code='NICTIZEd2005-Okt'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1">(combinatietest): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1">(combinatietest): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&gt;=1">(combinatietest): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&lt;=1">(combinatietest): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:processingCode[@code='P'])&gt;=1">(combinatietest): element hl7:processingCode[@code='P'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:processingCode[@code='P'])&lt;=1">(combinatietest): element hl7:processingCode[@code='P'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:processingModeCode[@code='T'])&gt;=1">(combinatietest): element hl7:processingModeCode[@code='T'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:processingModeCode[@code='T'])&lt;=1">(combinatietest): element hl7:processingModeCode[@code='T'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&gt;=1">(combinatietest): element hl7:acceptAckCode[@code='AL' or @code='NE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&lt;=1">(combinatietest): element hl7:acceptAckCode[@code='AL' or @code='NE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:receiver)&gt;=1">(combinatietest): element hl7:receiver is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:receiver)&lt;=1">(combinatietest): element hl7:receiver komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:sender[not(@nullFlavor)])&gt;=1">(combinatietest): element hl7:sender[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:sender[not(@nullFlavor)])&lt;=1">(combinatietest): element hl7:sender[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
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
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="$interactionVocab">(combinatietest): Transmission: <value-of select="$interactionVocabFile"/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or $isActive">(combinatietest): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet (meer) Actief in <value-of select="$interactionVocabFile"/>
            </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']">(combinatietest): Transmission: er moet in deze interactie exact één AttentionLine met BSN zitten - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or  not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']">(combinatietest): Transmission: er moet in deze interactie exact één AttentionLine met de ContextCode zitten - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk">(combinatietest): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet geconfigureerd voor gebruik van het element <value-of select="local-name()"/> voor BSN in <value-of select="$interactionVocabFile"/> en afzender is niet GBK of GBP</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk">(combinatietest): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet geconfigureerd voor gebruik van het element <value-of select="local-name()"/> voor ContextCode in <value-of select="$interactionVocabFile"/> en afzender is niet GBK of GBP</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1">(combinatietest): Transmission: er mag maximaal één AttentionLine met BSN zijn - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1">(combinatietest): Transmission: er mag maximaal één AttentionLine met de ContextCode zijn - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&gt;=1">(combinatietest): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&lt;=1">(combinatietest): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]"
         id="d291053e153-false-d291173e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@root and @extension">(MCCI_MT000100_peri): Transmission: id element mist root of extension</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:creationTime[not(@nullFlavor)]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:creationTime[not(@nullFlavor)]"
         id="d291053e162-false-d291184e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(*)">(MCCI_MT000100_peri): <value-of select="local-name()"/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:versionCode[@code='NICTIZEd2005-Okt']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:versionCode[@code='NICTIZEd2005-Okt']"
         id="d291053e171-false-d291199e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='NICTIZEd2005-Okt')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'NICTIZEd2005-Okt''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:interactionId[@root='2.16.840.1.113883.1.6']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:interactionId[@root='2.16.840.1.113883.1.6']"
         id="d291053e179-false-d291217e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@root)=('2.16.840.1.113883.1.6')">(MCCI_MT000100_peri): de waarde van @root MOET '2.16.840.1.113883.1.6' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension">(MCCI_MT000100_peri): Transmission: @extension moet overeenkomen met het startelement van het bericht</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810']"
         id="d291053e190-false-d291233e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11.1')">(MCCI_MT000100_peri): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@extension)=('810')">(MCCI_MT000100_peri): de waarde van @extension MOET '810' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingCode[@code='P']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingCode[@code='P']"
         id="d291053e200-false-d291253e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='P')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'P''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingModeCode[@code='T']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingModeCode[@code='T']"
         id="d291053e209-false-d291271e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='T')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'T''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:acceptAckCode[@code='AL' or @code='NE']
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:acceptAckCode[@code='AL' or @code='NE']"
         id="d291053e217-false-d291289e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="@nullFlavor or (@code='AL') or (@code='NE')">(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'AL' of code 'NE''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.120
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine
Item: (TransmissionWrapperAttentionLine)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine"
         id="d291290e31-false-d291310e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:keyWordText[not(@nullFlavor)])&gt;=1">(TransmissionWrapperAttentionLine): element hl7:keyWordText[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:keyWordText[not(@nullFlavor)])&lt;=1">(TransmissionWrapperAttentionLine): element hl7:keyWordText[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:value[not(@nullFlavor)])&gt;=1">(TransmissionWrapperAttentionLine): element hl7:value[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="count(hl7:value[not(@nullFlavor)])&lt;=1">(TransmissionWrapperAttentionLine): element hl7:value[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.120
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:keyWordText[not(@nullFlavor)]
Item: (TransmissionWrapperAttentionLine)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:keyWordText[not(@nullFlavor)]"
         id="d291290e36-false-d291337e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperAttentionLine): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.120
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:value[not(@nullFlavor)]
Item: (TransmissionWrapperAttentionLine)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:value[not(@nullFlavor)]"
         id="d291290e48-false-d291348e0">
      <extends rule="ANY"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="@xsi:type">(TransmissionWrapperAttentionLine): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver"
         id="d291053e233-false-d291362e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@typeCode)=('RCV') or not(@typeCode)">(MCCI_MT000100_peri): de waarde van @typeCode MOET 'RCV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)])&gt;=1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)])&lt;=1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]"
         id="d291359e58-false-d291390e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:name)&lt;=1">(TransmissionWrapperDevicePeri): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d291359e63-false-d291414e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@root">(TransmissionWrapperDevicePeri): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@extension">(TransmissionWrapperDevicePeri): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:name
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:name"
         id="d291359e73-false-d291433e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]"
         id="d291053e242-false-d291447e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="string(@typeCode)=('SND') or not(@typeCode)">(MCCI_MT000100_peri): de waarde van @typeCode MOET 'SND' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)])&gt;=1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="count(hl7:device[not(@nullFlavor)])&lt;=1">(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]"
         id="d291444e58-false-d291475e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="count(hl7:name)&lt;=1">(TransmissionWrapperDevicePeri): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d291444e63-false-d291499e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@root">(TransmissionWrapperDevicePeri): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="@extension">(TransmissionWrapperDevicePeri): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:name
Item: (TransmissionWrapperDevicePeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:name"
         id="d291444e73-false-d291518e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.85
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]
Item: (combinatietest)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]"
         id="d19e6676-false-d291628e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="string(@moodCode)=('EVN')">(combinatietest): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:effectiveTime)&lt;=1">(combinatietest): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:authorOrPerformer[not(@nullFlavor)])&gt;=1">(combinatietest): element hl7:authorOrPerformer[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:authorOrPerformer[not(@nullFlavor)])&lt;=1">(combinatietest): element hl7:authorOrPerformer[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="count(hl7:overseer[@typeCode='RESP'])&lt;=1">(combinatietest): element hl7:overseer[@typeCode='RESP'] komt te vaak voor [max 1x].</assert>
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
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="$interactionVocab">(combinatietest): Control Act: <value-of select="$interactionVocabFile"/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN']">(combinatietest): Control Act: <value-of select="local-name()"/>/@moodCode moet 'EVN' zijn bij queries</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode">(combinatietest): Control Act: <value-of select="local-name()"/>/code (Trigger Event) moet bij deze interactie '<value-of select="$interactionTriggerEventCode"/>' zijn, gevonden is echter '<value-of select="$messageTriggerEventCode"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag'">(combinatietest): Control Act: <value-of select="local-name()"/>/authorOrPerformer moet een persoon bevatten in berichten met vertrouwensniveau midden of hoog</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag'">(combinatietest): Control Act: <value-of select="local-name()"/>/overseer moet de mandaterende persoon bevatten in berichten met vertrouwensniveau midden of hoog</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine">(combinatietest): Patiëntgebonden interacties, verzonden vanuit een patiëntenportaal (GBP), moeten een attentionLine hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine">(combinatietest): Patiëntgebonden interacties, verzonden vanuit het klantenloket (GBK), moeten een attentionLine hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1'">(combinatietest): Control Act: <value-of select="$authorPath"/>/id. Applicatie-id <value-of select="$authorApplicationId"/> komt niet overeen met Transmission-wrapper sender <value-of select="$senderApplicationId"/>.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']">(combinatietest): Control Act: <value-of select="$authorPath"/>/id moet tenminste het UZI-nummer systemen bevatten voor een XIS in een GBZ</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension]">(combinatietest): Control Act: <value-of select="$authorPath"/>/id moet de zorgaanbieder van het XIS identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P']">(combinatietest): Control Act: <value-of select="$authorPath"/>/code/@code moet "P" (Patiënt) zijn. Wettelijke vertegenwoordigers moet dit via het Klantenloket doen en kunnen dus niet als auteur optreden</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET']">(combinatietest): Control Act: <value-of select="$authorPath"/>/code/@code moet "KLANTENLOKET" zijn voor klantenloketmedewerkers</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111']">(combinatietest): Control Act: <value-of select="$authorPath"/>/code ontbreekt. Dit is alleen toegestaan als de rolcode 00.000 is.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension]">(combinatietest): Control Act: <value-of select="$authorPath"/>/Organization/id moet de zorgaanbieder van de persoon identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25']">(combinatietest): Control Act: <value-of select="$authorPath"/>/Organization/id/@root moet '2.16.840.1.113883.2.4.3.11.25' bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']">(combinatietest): Control Act: <value-of select="$authorPath"/>/Organization/id moet de Nictiz-klantenloket organisatie identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3'])">(combinatietest): Control Act: <value-of select="$authorPath"/>/Organization/name moet de zorgaanbieder/organisatienaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7'])">(combinatietest): Control Act: <value-of select="$authorPath"/>/Organization/name moet de Nictiz-klantenloket organisatienaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson) or $overseerPerson/hl7:code">(combinatietest): Control Act: <value-of select="$overseerPath"/>/code is verplicht</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6']">(combinatietest): Control Act: <value-of select="$overseerPath"/>/code/@code moet "P" (Patiënt) zijn of een geldige waarde uit RoleCodeWettelijkeVertegenwoordigerNL</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name">(combinatietest): Control Act: <value-of select="$overseerPath"/>/assignedPrincipalChoiceList/assignedPerson/name is verplicht</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']">(combinatietest): Control Act: <value-of select="$overseerPath"/>/Organization/id moet de zorgaanbieder van de persoon identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name">(combinatietest): Control Act: <value-of select="$overseerPath"/>//Organization/name moet de zorgaanbiedernaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city">(combinatietest): Control Act: <value-of select="$overseerPath"/>/Organization/addr moet tennminste de vestigingsplaats bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.85-2016-12-16T140027.html"
              test="not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice']">(combinatietest): Control Act: <value-of select="$overseerPath"/>/Organization/id. Organisatie van de overseer (<value-of select="$overseerOrgId/@root"/>#<value-of select="$overseerOrgId/@extension"/>) moet gelijk zijn aan die van de authorOrPerformer (<value-of select="$authorOrgId/@extension"/>)</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901076
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:effectiveTime
Item: (ControlActMasterFileActPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:effectiveTime"
         id="d291635e192-false-d291834e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901076-2016-12-16T143227.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ControlActMasterFileActPeriCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901076-2016-12-16T143227.html"
              test="not(*)">(ControlActMasterFileActPeriCT): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer
Item: (ControlActAuthorOrPerformerPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer"
         id="d291835e114-false-d291895e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="@typeCode">(ControlActAuthorOrPerformerPeri): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.19080-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(ControlActAuthorOrPerformerPeri): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19080' x_ParticipationAuthorPerformer (2011-07-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="count(hl7:participant[not(@nullFlavor)])&gt;=1">(ControlActAuthorOrPerformerPeri): element hl7:participant[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="count(hl7:participant[not(@nullFlavor)])&lt;=1">(ControlActAuthorOrPerformerPeri): element hl7:participant[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]
Item: (ControlActAuthorOrPerformerPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]"
         id="d291835e124-false-d292018e0">
      <let name="elmcount" value="count(hl7:AssignedDevice | hl7:AssignedPerson)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="$elmcount&gt;=1">(ControlActAuthorOrPerformerPeri): keuze (hl7:AssignedDevice  of  hl7:AssignedPerson) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="$elmcount&lt;=1">(ControlActAuthorOrPerformerPeri): keuze (hl7:AssignedDevice  of  hl7:AssignedPerson) bevat te veel elementen [max 1x]</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice
Item: (ControlActAuthorOrPerformerPeri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice">
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.2'] | hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | hl7:id[@root='2.16.528.1.1007.4'] | hl7:id)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="$elmcount&lt;=2">(COCT_MT090300_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.2']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.6']  of  hl7:id[@root='2.16.528.1.1007.4']  of  hl7:id) bevat te veel elementen [max 2x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:Organization)&lt;=1">(COCT_MT090300_peri): element hl7:Organization komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1010
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.3.2']
Item: (dtUZIsystemen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.3.2']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1010-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtUZIsystemen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1010-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.2')">(dtUZIsystemen): de waarde van @root MOET '2.16.528.1.1007.3.2' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1008
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.840.1.113883.2.4.6.6']
Item: (dtAortaApplicationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.840.1.113883.2.4.6.6']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtAortaApplicationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="@extension">(dtAortaApplicationId): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(dtAortaApplicationId): attribuut @extension MOET datatype 'st' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.6')">(dtAortaApplicationId): de waarde van @root MOET '2.16.840.1.113883.2.4.6.6' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1018
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.4']
Item: (dtSBV-Zsystemen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1018-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-Zsystemen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1018-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.4')">(dtSBV-Zsystemen): de waarde van @root MOET '2.16.528.1.1007.4' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(COCT_MT090300_peri): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization">
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="$elmcount&gt;=1">(COCT_MT090300_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="$elmcount&lt;=1">(COCT_MT090300_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(COCT_MT090300_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(COCT_MT090300_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(COCT_MT090300_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:addr)&lt;=1">(COCT_MT090300_peri): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1011
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (dtURAorganization)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(dtURAorganization): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1019
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007'][@extension='4']
Item: (dtSBV-ZOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007'][@extension='4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007')">(dtSBV-ZOrganizationId): de waarde van @root MOET '2.16.528.1.1007' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@extension)=('4')">(dtSBV-ZOrganizationId): de waarde van @extension MOET '4' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1020
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']
Item: (dtGBO-GBP)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11.25')">(dtGBO-GBP): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.25' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']
Item: (dtGBKOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11')">(dtGBKOrganizationId): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@extension)=('7')">(dtGBKOrganizationId): de waarde van @extension MOET '7' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id
Item: (COCT_MT090300_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(COCT_MT090300_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:telecom
Item: (COCT_MT090300_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090300_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr
Item: (COCT_MT090300_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:city[not(@nullFlavor)])&gt;=1">(COCT_MT090300_peri): element hl7:city[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html"
              test="count(hl7:city[not(@nullFlavor)])&lt;=1">(COCT_MT090300_peri): element hl7:city[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (COCT_MT090300_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901043
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:templateId
Item: (COCT_MT090300_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson
Item: (ControlActAuthorOrPerformerPeri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson">
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount&gt;=1">(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']  of  hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:telecom)&lt;=1">(COCT_MT090100_peri): element hl7:telecom komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPrincipalChoiceList)&lt;=1">(COCT_MT090100_peri): element hl7:assignedPrincipalChoiceList komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1009
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (dtUZIpersonen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1007.3.1']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtUZIpersonen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.1')">(dtUZIpersonen): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1012
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (dtBSNId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBSNId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="@extension">(dtBSNId): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(dtBSNId): attribuut @extension MOET datatype 'st' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.3')">(dtBSNId): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string-length(@extension) = 9">(dtBSNId): Het BSN dient altijd 9 cijfers te bevatten. Het BSN kan ook voorloopnullen bevatten, oftewel beginnen met een nul.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']
Item: (dtBatchInzageAuteur)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBatchInzageAuteur): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11.7.3')">(dtBatchInzageAuteur): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.7.3' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']
Item: (dtNictizKlantenloketPKIO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtNictizKlantenloketPKIO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1003.1.3.5.4.1')">(dtNictizKlantenloketPKIO): de waarde van @root MOET '2.16.528.1.1003.1.3.5.4.1' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1017
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (dtAGB)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.1']">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtAGB): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(dtAGB): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.2 RoleCodeNL - zorgverlenertype (personen) (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.4 RoleCodeNL - toegang patiënt (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.5 RoleCodeNL - wettelijke vertegenwoording (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111')">(COCT_MT090100_peri): Control Act: <name path=".."/>/<name/> moet een UZI-rolcode 00.000 is niet toegestaan</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:telecom
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]">
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount&gt;=1">(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount&lt;=1">(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:addr)&lt;=1">(COCT_MT090100_peri): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1011
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (dtURAorganization)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(dtURAorganization): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1019
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']
Item: (dtSBV-ZOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007')">(dtSBV-ZOrganizationId): de waarde van @root MOET '2.16.528.1.1007' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@extension)=('4')">(dtSBV-ZOrganizationId): de waarde van @extension MOET '4' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1020
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']
Item: (dtGBO-GBP)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11.25')">(dtGBO-GBP): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.25' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']
Item: (dtGBKOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11')">(dtGBKOrganizationId): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@extension)=('7')">(dtGBKOrganizationId): de waarde van @extension MOET '7' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:telecom
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:city)&lt;=1">(COCT_MT090100_peri): element hl7:city komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr/hl7:city
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:templateId
Item: (COCT_MT090100_peri)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901042
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']
Item: (ControlActOverseerPersonMcaiMfmiPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']"
         id="d293069e67-false-d293104e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="string(@typeCode)=('RESP')">(ControlActOverseerPersonMcaiMfmiPeri): de waarde van @typeCode MOET 'RESP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="count(hl7:AssignedPerson[not(@nullFlavor)])&gt;=1">(ControlActOverseerPersonMcaiMfmiPeri): element hl7:AssignedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901042
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]
Item: (ControlActOverseerPersonMcaiMfmiPeri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]">
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount&gt;=1">(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']  of  hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:telecom)&lt;=1">(COCT_MT090100_peri): element hl7:telecom komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPrincipalChoiceList)&lt;=1">(COCT_MT090100_peri): element hl7:assignedPrincipalChoiceList komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:Organization[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1009
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (dtUZIpersonen)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtUZIpersonen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.1')">(dtUZIpersonen): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1012
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (dtBSNId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBSNId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="@extension">(dtBSNId): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(dtBSNId): attribuut @extension MOET datatype 'st' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.3')">(dtBSNId): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html"
              test="string-length(@extension) = 9">(dtBSNId): Het BSN dient altijd 9 cijfers te bevatten. Het BSN kan ook voorloopnullen bevatten, oftewel beginnen met een nul.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']
Item: (dtBatchInzageAuteur)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtBatchInzageAuteur): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11.7.3')">(dtBatchInzageAuteur): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.7.3' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']
Item: (dtNictizKlantenloketPKIO)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtNictizKlantenloketPKIO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1003.1.3.5.4.1')">(dtNictizKlantenloketPKIO): de waarde van @root MOET '2.16.528.1.1003.1.3.5.4.1' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1017
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (dtAGB)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtAGB): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(dtAGB): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.2 RoleCodeNL - zorgverlenertype (personen) (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.4 RoleCodeNL - toegang patiënt (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.5 RoleCodeNL - wettelijke vertegenwoording (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111')">(COCT_MT090100_peri): Control Act: <name path=".."/>/<name/> moet een UZI-rolcode 00.000 is niet toegestaan</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:telecom
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]">
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount&gt;=1">(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="$elmcount&lt;=1">(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:addr)&lt;=1">(COCT_MT090100_peri): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1011
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (dtURAorganization)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(dtURAorganization): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1019
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']
Item: (dtSBV-ZOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@root)=('2.16.528.1.1007')">(dtSBV-ZOrganizationId): de waarde van @root MOET '2.16.528.1.1007' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html"
              test="string(@extension)=('4')">(dtSBV-ZOrganizationId): de waarde van @extension MOET '4' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1020
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']
Item: (dtGBO-GBP)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11.25')">(dtGBO-GBP): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.25' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.102.10.1021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']
Item: (dtGBKOrganizationId)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.11')">(dtGBKOrganizationId): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html"
              test="string(@extension)=('7')">(dtGBKOrganizationId): de waarde van @extension MOET '7' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:telecom
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr
Item: (COCT_MT090100_peri)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html"
              test="count(hl7:city)&lt;=1">(COCT_MT090100_peri): element hl7:city komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr/hl7:city
Item: (COCT_MT090100_peri)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901040
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:templateId
Item: (COCT_MT090100_peri)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901076
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]
Item: (ControlActMasterFileActPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]"
         id="d291635e220-false-d293785e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901076-2016-12-16T143227.html"
              test="string(@typeCode)=('SUBJ') or not(@typeCode)">(ControlActMasterFileActPeriCT): de waarde van @typeCode MOET 'SUBJ' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901076-2016-12-16T143227.html"
              test="string(@contextConductionInd)=('false') or not(@contextConductionInd)">(ControlActMasterFileActPeriCT): de waarde van @contextConductionInd MOET 'false' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901076-2016-12-16T143227.html"
              test="count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&gt;=1">(ControlActMasterFileActPeriCT): element hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901076-2016-12-16T143227.html"
              test="count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&lt;=1">(ControlActMasterFileActPeriCT): element hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]"
         id="d293797e23-false-d293996e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@classCode)=('REG') or not(@classCode)">(RegistrationEventACTPeriCT): de waarde van @classCode MOET 'REG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="@moodCode">(RegistrationEventACTPeriCT): attribute @moodCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.10196-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="not(@moodCode) or count($theAttValue) = count($theAttCheck)">(RegistrationEventACTPeriCT): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10196' ActMood (2011-07-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&gt;=1">(RegistrationEventACTPeriCT): element hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&lt;=1">(RegistrationEventACTPeriCT): element hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:statusCode[@code='active' or @nullFlavor])&gt;=1">(RegistrationEventACTPeriCT): element hl7:statusCode[@code='active' or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1">(RegistrationEventACTPeriCT): element hl7:statusCode[@code='active' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:effectiveTime)&gt;=1">(RegistrationEventACTPeriCT): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:effectiveTime)&lt;=1">(RegistrationEventACTPeriCT): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:subject1)=0">(RegistrationEventACTPeriCT): element hl7:subject1 MAG NIET voorkomen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]])&gt;=1">(RegistrationEventACTPeriCT): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]"
         id="d293797e32-false-d294161e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="@nullFlavor or (@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')">(RegistrationEventACTPeriCT): de elementwaarde MOET een zijn van 'code '900000' codeSystem '2.16.840.1.113883.2.4.15.4''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code='active' or @nullFlavor]
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code='active' or @nullFlavor]"
         id="d293797e37-false-d294179e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="@nullFlavor or (@code='active')">(RegistrationEventACTPeriCT): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime"
         id="d293797e42-false-d294196e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="not(@value)">(RegistrationEventACTPeriCT): attribute @value MAG NIET voorkomen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@nullFlavor)=('UNK') or not(@nullFlavor)">(RegistrationEventACTPeriCT): de waarde van @nullFlavor MOET 'UNK' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:low)&lt;=1">(RegistrationEventACTPeriCT): element hl7:low komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/hl7:low
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/hl7:low"
         id="d293797e48-false-d294222e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@nullFlavor)=('UNK') or not(@nullFlavor)">(RegistrationEventACTPeriCT): de waarde van @nullFlavor MOET 'UNK' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject1
Item: (RegistrationEventACTPeriCT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]"
         id="d293797e60-false-d294330e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']])&gt;=1">(RegistrationEventACTPeriCT): element hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']])&lt;=1">(RegistrationEventACTPeriCT): element hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]"
         id="d293797e62-false-d294524e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@classCode)=('PCPR')">(RegistrationEventACTPeriCT): de waarde van @classCode MOET 'PCPR' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@moodCode)=('EVN')">(RegistrationEventACTPeriCT): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85'])&gt;=1">(RegistrationEventACTPeriCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85'])&lt;=1">(RegistrationEventACTPeriCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:statusCode[@code='active'])&gt;=1">(RegistrationEventACTPeriCT): element hl7:statusCode[@code='active'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:statusCode[@code='active'])&lt;=1">(RegistrationEventACTPeriCT): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1">(RegistrationEventACTPeriCT): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1">(RegistrationEventACTPeriCT): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&gt;=1">(RegistrationEventACTPeriCT): element hl7:performer[@typeCode='PPRF'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&lt;=1">(RegistrationEventACTPeriCT): element hl7:performer[@typeCode='PPRF'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]])&gt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]])&gt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]])&gt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="count(hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]])&lt;=1">(RegistrationEventACTPeriCT): element hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']"
         id="d293797e68-false-d294739e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.85')">(RegistrationEventACTPeriCT): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.85' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:statusCode[@code='active']
Item: (RegistrationEventACTPeriCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:statusCode[@code='active']"
         id="d293797e73-false-d294755e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="@nullFlavor or (@code='active')">(RegistrationEventACTPeriCT): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901077
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']
Item: (VrouwCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']"
         id="d294756e18-false-d294784e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="string(@typeCode)=('SBJ')">(VrouwCT): de waarde van @typeCode MOET 'SBJ' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901077
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']
Item: (VrouwCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']"
         id="d294756e30-false-d294820e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="string(@classCode)=('PAT')">(VrouwCT): de waarde van @classCode MOET 'PAT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(VrouwCT): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(VrouwCT): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:addr)&gt;=1">(VrouwCT): element hl7:addr is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:addr)&lt;=1">(VrouwCT): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1">(VrouwCT): element hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1">(VrouwCT): element hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900028
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:id"
         id="d294817e36-false-d294885e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.3') or not(@root)">(Burgerservicenummer): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900148
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:addr
Item: (Adresvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:addr"
         id="d294886e18-false-d294901e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="@use">(Adresvrouw): attribute @use MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@use,' ') return if ($code=('HP','PHYS','TMP','HP PHYS','TMP PHYS')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="not(@use) or count($theAttValue) = count($theAttCheck)">(Adresvrouw): de waarde van use MOET 'code HP of code PHYS of code TMP of code HP PHYS of code TMP PHYS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="count(hl7:postalCode)&gt;=1">(Adresvrouw): element hl7:postalCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="count(hl7:postalCode)&lt;=1">(Adresvrouw): element hl7:postalCode komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900148
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:addr/hl7:postalCode
Item: (Adresvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:addr/hl7:postalCode"
         id="d294886e51-false-d294959e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Adresvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901077
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (VrouwCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d294756e38-false-d294980e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="string(@classCode)=('PSN')">(VrouwCT): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="string(@determinerCode)=('INSTANCE')">(VrouwCT): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(VrouwCT): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=2">(VrouwCT): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:birthTime)&gt;=1">(VrouwCT): element hl7:birthTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:birthTime)&lt;=1">(VrouwCT): element hl7:birthTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(VrouwCT): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901077-2016-12-16T150713.html"
              test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(VrouwCT): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900925
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (Naamvrouw2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d294998e25-false-d295050e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900925-2014-01-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamvrouw2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (Geboortedatumvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d295051e16-false-d295062e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html"
              test="not(*)">(Geboortedatumvrouw): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900033
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Etniciteit)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d295063e20-false-d295080e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Etniciteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Etniciteit): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Etniciteit): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901078
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']
Item: (ZorgverlenerInstellingCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']"
         id="d295081e27-false-d295122e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="string(@typeCode)=('PPRF')">(ZorgverlenerInstellingCT): de waarde van @typeCode MOET 'PPRF' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:responsibleParty[@classCode='ASSIGNED'])&gt;=1">(ZorgverlenerInstellingCT): element hl7:responsibleParty[@classCode='ASSIGNED'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:responsibleParty[@classCode='ASSIGNED'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:responsibleParty[@classCode='ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901078
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']
Item: (ZorgverlenerInstellingCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']"
         id="d295081e75-false-d295180e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="string(@classCode)=('ASSIGNED')">(ZorgverlenerInstellingCT): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="$elmcount&gt;=1">(ZorgverlenerInstellingCT): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[@root='2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:agentPerson)&lt;=1">(ZorgverlenerInstellingCT): element hl7:agentPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)])&gt;=1">(ZorgverlenerInstellingCT): element hl7:representedOrganization[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)])&lt;=1">(ZorgverlenerInstellingCT): element hl7:representedOrganization[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900702
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (ZorgverlenerUZInummer)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d295177e36-false-d295274e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerUZInummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.1')">(ZorgverlenerUZInummer): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900702-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerUZInummer): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900703
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (ZorgverlenerAGBID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d295275e20-false-d295295e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(ZorgverlenerAGBID): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900703-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900704
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']
Item: (ZorgverlenerLVR1ID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
         id="d295296e20-false-d295316e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerLVR1ID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.2')">(ZorgverlenerLVR1ID): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900704-2009-10-01T000000.html"
              test="@extension">(ZorgverlenerLVR1ID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901078
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson
Item: (ZorgverlenerInstellingCT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson
Item: (Naamzorgverlener)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson/hl7:name
Item: (Naamzorgverlener)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901078
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]
Item: (ZorgverlenerInstellingCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]"
         id="d295081e90-false-d295384e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1">(ZorgverlenerInstellingCT): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1">(ZorgverlenerInstellingCT): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="$elmcount&lt;=3">(ZorgverlenerInstellingCT): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']) bevat te veel elementen [max 3x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[@root='2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&lt;=1">(ZorgverlenerInstellingCT): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="count(hl7:name)&lt;=1">(ZorgverlenerInstellingCT): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901078
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]
Item: (ZorgverlenerInstellingCT)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]"
         id="d295081e92-false-d295477e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901078-2016-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingCT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')]"
         id="d295478e18-false-d295487e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2016-12-02T102921.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900610
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (ZorginstellingAGBID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d295488e16-false-d295500e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingAGBID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(ZorginstellingAGBID): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900610-2009-10-01T000000.html"
              test="@extension">(ZorginstellingAGBID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900021
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (ZorginstellingURA)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d295501e20-false-d295521e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingURA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(ZorginstellingURA): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900021-2009-10-01T000000.html"
              test="@extension">(ZorginstellingURA): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']"
         id="d295522e22-false-d295542e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900025
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:name
Item: (Naamzorginstelling)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:name"
         id="d295543e20-false-d295562e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900025-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorginstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]">
      <extends rule="d293797e88-false-d295600e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901079
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]
Item: (AnamneseCombinatietest)
-->
   <rule id="d293797e88-false-d295600e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']])&gt;=1">(AnamneseCombinatietest): element hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']])&lt;=1">(AnamneseCombinatietest): element hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901079
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]
Item: (AnamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="string(@classCode)=('CONTAINER')">(AnamneseCombinatietest): de waarde van @classCode MOET 'CONTAINER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="string(@moodCode)=('EVN')">(AnamneseCombinatietest): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963'])&gt;=1">(AnamneseCombinatietest): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963'])&lt;=1">(AnamneseCombinatietest): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(AnamneseCombinatietest): element hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(AnamneseCombinatietest): element hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:component[hl7:organizer/hl7:code/@code='312850006'])&lt;=1">(AnamneseCombinatietest): element hl7:component[hl7:organizer/hl7:code/@code='312850006'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901079
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']
Item: (AnamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900963')">(AnamneseCombinatietest): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900963' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901079
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (AnamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="@nullFlavor or (@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')">(AnamneseCombinatietest): de elementwaarde MOET een zijn van 'code '417662000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901079
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']
Item: (AnamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="string(@typeCode)=('COMP')">(AnamneseCombinatietest): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']])&gt;=1">(AnamneseCombinatietest): element hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901079-2016-12-16T000000.html"
              test="count(hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']])&lt;=1">(AnamneseCombinatietest): element hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901080
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]
Item: (AlgemeneanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="string(@classCode)=('CONTAINER')">(AlgemeneanamneseCombinatietest): de waarde van @classCode MOET 'CONTAINER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="string(@moodCode)=('EVN')">(AlgemeneanamneseCombinatietest): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959'])&gt;=1">(AlgemeneanamneseCombinatietest): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959'])&lt;=1">(AlgemeneanamneseCombinatietest): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="count(hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(AlgemeneanamneseCombinatietest): element hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="count(hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(AlgemeneanamneseCombinatietest): element hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]])&lt;=1">(AlgemeneanamneseCombinatietest): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901080
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']
Item: (AlgemeneanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AlgemeneanamneseCombinatietest): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900959')">(AlgemeneanamneseCombinatietest): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900959' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901080
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (AlgemeneanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AlgemeneanamneseCombinatietest): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="@nullFlavor or (@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')">(AlgemeneanamneseCombinatietest): de elementwaarde MOET een zijn van 'code '312850006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901080
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]
Item: (AlgemeneanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="string(@typeCode)=('COMP')">(AlgemeneanamneseCombinatietest): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901080-2016-12-16T000000.html"
              test="string(@contextConductionInd)=('true')">(AlgemeneanamneseCombinatietest): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]
Item: (DiabetesMellitus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]
Item: (DiabetesMellitus)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="string(@classCode)=('OBS')">(DiabetesMellitus): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="string(@moodCode)=('EVN')">(DiabetesMellitus): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936'])&gt;=1">(DiabetesMellitus): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936'])&lt;=1">(DiabetesMellitus): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(DiabetesMellitus): element hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(DiabetesMellitus): element hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(DiabetesMellitus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(DiabetesMellitus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']
Item: (DiabetesMellitus)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900936')">(DiabetesMellitus): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900936' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (DiabetesMellitus)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="@nullFlavor or (@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')">(DiabetesMellitus): de elementwaarde MOET een zijn van 'code '73211009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900936
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (DiabetesMellitus)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:organizer[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900963']]/hl7:component[hl7:organizer/hl7:code/@code='312850006']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900959']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900936']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900936-2016-12-02T132728.html"
              test="@xsi:type">(DiabetesMellitus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]
Item: (BodyHeight)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]
Item: (BodyHeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="string(@classCode)=('OBS')">(BodyHeight): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="string(@moodCode)=('EVN')">(BodyHeight): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570'])&gt;=1">(BodyHeight): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570'])&lt;=1">(BodyHeight): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(BodyHeight): element hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BodyHeight): element hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']
Item: (BodyHeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900570')">(BodyHeight): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900570' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]/hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BodyHeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]/hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="@nullFlavor or (@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')">(BodyHeight): de elementwaarde MOET een zijn van 'code '3137-7' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (BodyHeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900570']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="(@nullFlavor or (@unit='cm'))">(BodyHeight): value MOET eenheid 'cm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=270))">(BodyHeight): value MOET in bereik [0..270] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2016-12-05T183214.html"
              test="@xsi:type">(BodyHeight): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']
Item: (ObstetrischeanamneseCombinatietest)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@classCode)=('CONTAINER')">(ObstetrischeanamneseCombinatietest): de waarde van @classCode MOET 'CONTAINER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@moodCode)=('EVN')">(ObstetrischeanamneseCombinatietest): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966'])&gt;=1">(ObstetrischeanamneseCombinatietest): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966'])&lt;=1">(ObstetrischeanamneseCombinatietest): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(ObstetrischeanamneseCombinatietest): element hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ObstetrischeanamneseCombinatietest): element hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(ObstetrischeanamneseCombinatietest): element hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900966')">(ObstetrischeanamneseCombinatietest): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900966' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="@nullFlavor or (@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')">(ObstetrischeanamneseCombinatietest): de elementwaarde MOET een zijn van 'code '248983002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@typeCode)=('COMP')">(ObstetrischeanamneseCombinatietest): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@contextConductionInd)=('true')">(ObstetrischeanamneseCombinatietest): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1">(ObstetrischeanamneseCombinatietest): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(ObstetrischeanamneseCombinatietest): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@classCode)=('PROC')">(ObstetrischeanamneseCombinatietest): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@moodCode)=('EVN')">(ObstetrischeanamneseCombinatietest): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:id)&gt;=1">(ObstetrischeanamneseCombinatietest): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:id)&lt;=1">(ObstetrischeanamneseCombinatietest): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(ObstetrischeanamneseCombinatietest): element hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="count(hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ObstetrischeanamneseCombinatietest): element hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(ObstetrischeanamneseCombinatietest): attribuut @root MOET datatype 'uid' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(ObstetrischeanamneseCombinatietest): attribuut @extension MOET datatype 'st' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(ObstetrischeanamneseCombinatietest): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="@nullFlavor or (@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')">(ObstetrischeanamneseCombinatietest): de elementwaarde MOET een zijn van 'code '236973005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901081
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']
Item: (ObstetrischeanamneseCombinatietest)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901081-2016-12-16T000000.html"
              test="string(@typeCode)=('COMP')">(ObstetrischeanamneseCombinatietest): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']
Item: (VorigeUitkomstperkindCT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@classCode)=('PROC')">(VorigeUitkomstperkindCT): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@moodCode)=('EVN')">(VorigeUitkomstperkindCT): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980'])&gt;=1">(VorigeUitkomstperkindCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980'])&lt;=1">(VorigeUitkomstperkindCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:id)&gt;=1">(VorigeUitkomstperkindCT): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:id)&lt;=1">(VorigeUitkomstperkindCT): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&gt;=1">(VorigeUitkomstperkindCT): element hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&lt;=1">(VorigeUitkomstperkindCT): element hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]])&lt;=1">(VorigeUitkomstperkindCT): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]])&lt;=1">(VorigeUitkomstperkindCT): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900980')">(VorigeUitkomstperkindCT): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900980' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:id
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(VorigeUitkomstperkindCT): attribuut @root MOET datatype 'uid' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(VorigeUitkomstperkindCT): attribuut @extension MOET datatype 'st' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(VorigeUitkomstperkindCT): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="@nullFlavor or (@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(VorigeUitkomstperkindCT): de elementwaarde MOET een zijn van 'code 'Baring' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@typeCode)=('SBJ')">(VorigeUitkomstperkindCT): de waarde van @typeCode MOET 'SBJ' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]])&gt;=1">(VorigeUitkomstperkindCT): element hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]])&lt;=1">(VorigeUitkomstperkindCT): element hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@classCode)=('PRS')">(VorigeUitkomstperkindCT): de waarde van @classCode MOET 'PRS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1">(VorigeUitkomstperkindCT): element hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">(VorigeUitkomstperkindCT): element hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)])&gt;=1">(VorigeUitkomstperkindCT): element hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="count(hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)])&lt;=1">(VorigeUitkomstperkindCT): element hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(VorigeUitkomstperkindCT): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@classCode)=('PSN')">(VorigeUitkomstperkindCT): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(VorigeUitkomstperkindCT): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]">
      <extends rule="d296323e110-false-d296574e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@typeCode)=('COMP')">(VorigeUitkomstperkindCT): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]
Item: (Congenitaleafwijkingen3)
-->
   <rule id="d296323e110-false-d296574e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']])&lt;=1">(Congenitaleafwijkingen3): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]
Item: (Congenitaleafwijkingen3)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="string(@classCode)=('OBS')">(Congenitaleafwijkingen3): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="string(@moodCode)=('EVN')">(Congenitaleafwijkingen3): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Congenitaleafwijkingen3): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI','UNK')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(Congenitaleafwijkingen3): de waarde van nullFlavor MOET 'code NI of code UNK' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015'])&gt;=1">(Congenitaleafwijkingen3): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015'])&lt;=1">(Congenitaleafwijkingen3): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Congenitaleafwijkingen3): element hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Congenitaleafwijkingen3): element hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']
Item: (Congenitaleafwijkingen3)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901015')">(Congenitaleafwijkingen3): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901015' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Congenitaleafwijkingen3)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="@nullFlavor or (@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')">(Congenitaleafwijkingen3): de elementwaarde MOET een zijn van 'code '443341004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901082
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]
Item: (VorigeUitkomstperkindCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]">
      <extends rule="d296323e115-false-d296694e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901082-2016-12-16T000000.html"
              test="string(@typeCode)=('COMP')">(VorigeUitkomstperkindCT): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule id="d296323e115-false-d296694e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@classCode)=('OBS')">(ChromosomaleafwijkingenNU): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@moodCode)=('EVN')">(ChromosomaleafwijkingenNU): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(ChromosomaleafwijkingenNU): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI','UNK')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(ChromosomaleafwijkingenNU): de waarde van nullFlavor MOET 'code NI of code UNK' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="../hl7:observation/@negationInd='true' or ../hl7:observation/@nullFlavor or hl7:value">(ChromosomaleafwijkingenNU): Als er sprake is van Chromosomale afwijkingen, ook een waarde opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor and @negationInd)">(ChromosomaleafwijkingenNU): Er moet ofwel een nullFlavor, ofwel een negationInd aanwezig zijn, maar niet beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or @negationInd='true' or not(exists(../../hl7:outboundRelationship/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')][@negationInd='true' or @nullFlavor]))">(ChromosomaleafwijkingenNU): Chromosomale afwijking(en) zijn alleen van toepassing wanneer er sprake is van congenitale afwijkingen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'])&gt;=1">(ChromosomaleafwijkingenNU): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(ChromosomaleafwijkingenNU): element hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901016')">(ChromosomaleafwijkingenNU): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901016' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or (@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')">(ChromosomaleafwijkingenNU): de elementwaarde MOET een zijn van 'code '74345006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002']/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900966']]/hl7:component[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900980']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ChromosomaleafwijkingenNU): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.198 ChromosomaleAfwijkingen (2016-10-26T16:44:18)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ChromosomaleafwijkingenNU): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.198 ChromosomaleAfwijkingen (2016-10-26T16:44:18).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(ChromosomaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(../(@nullFlavor or @negationInd='true'))">(ChromosomaleafwijkingenNU): Alleen een waarde voor chromosomale afwijking opnemen als er ook sprake is van een chromosomale afwijking.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="../hl7:observation/@negationInd='true' or not(exists(../../*/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')][not(@negationInd='true' or @nullFlavor)]))">(ChromosomaleafwijkingenNU): Als er sprake is van Chromosomale afwijkingen, moet er ook sprake zijn van congenitale afwijkingen (dus congenitale afwijkingen moet waarde 'true' hebben).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="./hl7:observation/hl7:value/@value&lt;2 or ../hl7:pertinentInformation3/hl7:observation[hl7:code/@code='TrisomyAnam']/hl7:value">(RegistrationEventACTPeriCT): Bij graviditeit &gt; 1, trisomie in anamnese verplicht opnemen.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="string(@classCode)=('OBS')">(Graviditeit): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="string(@moodCode)=('EVN')">(Graviditeit): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004'])&gt;=1">(Graviditeit): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004'])&lt;=1">(Graviditeit): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Graviditeit): element hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Graviditeit): element hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900004')">(Graviditeit): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900004' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Graviditeit)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2016-12-06T105610.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(Graviditeit): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]
Item: (EDDdefinitive)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@classCode)=('OBS')">(EDDdefinitive): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@moodCode)=('EVN')">(EDDdefinitive): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928'])&gt;=1">(EDDdefinitive): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928'])&lt;=1">(EDDdefinitive): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(EDDdefinitive): element hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(EDDdefinitive): element hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(EDDdefinitive): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(EDDdefinitive): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900928')">(EDDdefinitive): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900928' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="@nullFlavor or (@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDdefinitive): de elementwaarde MOET een zijn van 'code 'EDDDef' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (EDDdefinitive)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="@xsi:type">(EDDdefinitive): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]
Item: (SubfertiliteitsbehandelingCT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@classCode)=('OBS')">(SubfertiliteitsbehandelingCT): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@moodCode)=('EVN')">(SubfertiliteitsbehandelingCT): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083'])&gt;=1">(SubfertiliteitsbehandelingCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083'])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1">(SubfertiliteitsbehandelingCT): element hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(SubfertiliteitsbehandelingCT): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]])&lt;=1">(SubfertiliteitsbehandelingCT): element hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901083')">(SubfertiliteitsbehandelingCT): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901083' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="@nullFlavor or (@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(SubfertiliteitsbehandelingCT): de elementwaarde MOET een zijn van 'code 'PRN3206' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="@xsi:type">(SubfertiliteitsbehandelingCT): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]">
      <extends rule="d297127e47-false-d297367e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@typeCode)=('PERT')">(SubfertiliteitsbehandelingCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]
Item: (Ovulatieinductietoegepast)
-->
   <rule id="d297127e47-false-d297367e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']])&gt;=1">(Ovulatieinductietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']])&lt;=1">(Ovulatieinductietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]
Item: (Ovulatieinductietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="string(@classCode)=('PROC')">(Ovulatieinductietoegepast): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="string(@moodCode)=('EVN')">(Ovulatieinductietoegepast): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="@negationInd">(Ovulatieinductietoegepast): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Ovulatieinductietoegepast): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174'])&gt;=1">(Ovulatieinductietoegepast): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174'])&lt;=1">(Ovulatieinductietoegepast): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:id)&gt;=1">(Ovulatieinductietoegepast): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:id)&lt;=1">(Ovulatieinductietoegepast): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Ovulatieinductietoegepast): element hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="count(hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Ovulatieinductietoegepast): element hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']
Item: (Ovulatieinductietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900174')">(Ovulatieinductietoegepast): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900174' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]/hl7:id
Item: (Ovulatieinductietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="string(@nullFlavor)=('NI')">(Ovulatieinductietoegepast): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]/hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Ovulatieinductietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900174']]/hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2016-12-19T130804.html"
              test="@nullFlavor or (@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')">(Ovulatieinductietoegepast): de elementwaarde MOET een zijn van 'code '61285001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]">
      <extends rule="d297127e52-false-d297498e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@typeCode)=('PERT')">(SubfertiliteitsbehandelingCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]
Item: (Geassisteerdeconceptie)
-->
   <rule id="d297127e52-false-d297498e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']])&gt;=1">(Geassisteerdeconceptie): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']])&lt;=1">(Geassisteerdeconceptie): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]
Item: (Geassisteerdeconceptie)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="string(@classCode)=('PROC')">(Geassisteerdeconceptie): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="string(@moodCode)=('EVN')">(Geassisteerdeconceptie): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="@negationInd">(Geassisteerdeconceptie): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Geassisteerdeconceptie): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="../hl7:procedure[string(@negationInd)='true'] or hl7:methodCode">(Geassisteerdeconceptie): If Geassisteerdeconceptie=true (negationInd=false) an hl7:methodCode shall be present</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175'])&gt;=1">(Geassisteerdeconceptie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175'])&lt;=1">(Geassisteerdeconceptie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:id)&gt;=1">(Geassisteerdeconceptie): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:id)&lt;=1">(Geassisteerdeconceptie): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Geassisteerdeconceptie): element hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Geassisteerdeconceptie): element hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Geassisteerdeconceptie): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']
Item: (Geassisteerdeconceptie)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900175')">(Geassisteerdeconceptie): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900175' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:id
Item: (Geassisteerdeconceptie)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="string(@nullFlavor)=('NI')">(Geassisteerdeconceptie): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Geassisteerdeconceptie)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="@nullFlavor or (@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')">(Geassisteerdeconceptie): de elementwaarde MOET een zijn van 'code '63487001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Geassisteerdeconceptie)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900175']]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Geassisteerdeconceptie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.199 GeassConceptie (2014-01-28T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2016-12-19T131156.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Geassisteerdeconceptie): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.199 GeassConceptie (2014-01-28T00:00:00).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]">
      <extends rule="d297127e57-false-d297666e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@typeCode)=('PERT')">(SubfertiliteitsbehandelingCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]
Item: (Eiceldonatietoegepast)
-->
   <rule id="d297127e57-false-d297666e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']])&gt;=1">(Eiceldonatietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']])&lt;=1">(Eiceldonatietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]
Item: (Eiceldonatietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="string(@classCode)=('PROC')">(Eiceldonatietoegepast): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="string(@moodCode)=('EVN')">(Eiceldonatietoegepast): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="@negationInd">(Eiceldonatietoegepast): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Eiceldonatietoegepast): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180'])&gt;=1">(Eiceldonatietoegepast): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180'])&lt;=1">(Eiceldonatietoegepast): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:id)&gt;=1">(Eiceldonatietoegepast): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:id)&lt;=1">(Eiceldonatietoegepast): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Eiceldonatietoegepast): element hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Eiceldonatietoegepast): element hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]])&lt;=1">(Eiceldonatietoegepast): element hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]])&lt;=1">(Eiceldonatietoegepast): element hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']
Item: (Eiceldonatietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900180')">(Eiceldonatietoegepast): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900180' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:id
Item: (Eiceldonatietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="string(@nullFlavor)=('NI')">(Eiceldonatietoegepast): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Eiceldonatietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="@nullFlavor or (@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')">(Eiceldonatietoegepast): de elementwaarde MOET een zijn van 'code '176843009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]
Item: (Eiceldonatietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]">
      <extends rule="d297660e61-false-d297830e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="string(@typeCode)=('PERT')">(Eiceldonatietoegepast): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900931
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]
Item: (GeboortedatumeiceldonatriceObserved)
-->
   <rule id="d297660e61-false-d297830e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']])&gt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']])&lt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900931
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]
Item: (GeboortedatumeiceldonatriceObserved)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="string(@classCode)=('OBS')">(GeboortedatumeiceldonatriceObserved): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="string(@moodCode)=('EVN')">(GeboortedatumeiceldonatriceObserved): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931'])&gt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931'])&lt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:code[(@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:code[(@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:code[(@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:code[(@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1">(GeboortedatumeiceldonatriceObserved): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900931
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']
Item: (GeboortedatumeiceldonatriceObserved)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900931')">(GeboortedatumeiceldonatriceObserved): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900931' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900931
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]/hl7:code[(@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (GeboortedatumeiceldonatriceObserved)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]/hl7:code[(@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="@nullFlavor or (@code='GebDatEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(GeboortedatumeiceldonatriceObserved): de elementwaarde MOET een zijn van 'code 'GebDatEiDon' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900931
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (GeboortedatumeiceldonatriceObserved)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900931']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900931-2016-12-19T121501.html"
              test="@xsi:type">(GeboortedatumeiceldonatriceObserved): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]
Item: (Eiceldonatietoegepast)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]">
      <extends rule="d297660e66-false-d297954e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2016-12-19T121153.html"
              test="string(@typeCode)=('PERT')">(Eiceldonatietoegepast): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901084
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]
Item: (LeeftijdEiceldonatrice)
-->
   <rule id="d297660e66-false-d297954e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']])&gt;=1">(LeeftijdEiceldonatrice): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']])&lt;=1">(LeeftijdEiceldonatrice): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901084
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]
Item: (LeeftijdEiceldonatrice)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="string(@classCode)=('OBS')">(LeeftijdEiceldonatrice): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="string(@moodCode)=('EVN')">(LeeftijdEiceldonatrice): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084'])&gt;=1">(LeeftijdEiceldonatrice): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084'])&lt;=1">(LeeftijdEiceldonatrice): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:code[(@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(LeeftijdEiceldonatrice): element hl7:code[(@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:code[(@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(LeeftijdEiceldonatrice): element hl7:code[(@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1">(LeeftijdEiceldonatrice): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1">(LeeftijdEiceldonatrice): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901084
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']
Item: (LeeftijdEiceldonatrice)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901084')">(LeeftijdEiceldonatrice): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901084' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901084
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]/hl7:code[(@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (LeeftijdEiceldonatrice)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]/hl7:code[(@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="@nullFlavor or (@code='LftdEiDon' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(LeeftijdEiceldonatrice): de elementwaarde MOET een zijn van 'code 'LftdEiDon' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901084
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (LeeftijdEiceldonatrice)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900180']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901084']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901084-2016-12-19T120806.html"
              test="@xsi:type">(LeeftijdEiceldonatrice): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]">
      <extends rule="d297127e62-false-d298079e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@typeCode)=('PERT')">(SubfertiliteitsbehandelingCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901085
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]
Item: (EicelExtractieDatum)
-->
   <rule id="d297127e62-false-d298079e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']])&gt;=1">(EicelExtractieDatum): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']])&lt;=1">(EicelExtractieDatum): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901085
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]
Item: (EicelExtractieDatum)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="string(@classCode)=('PROC')">(EicelExtractieDatum): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="string(@moodCode)=('EVN')">(EicelExtractieDatum): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="@negationInd">(EicelExtractieDatum): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(EicelExtractieDatum): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085'])&gt;=1">(EicelExtractieDatum): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085'])&lt;=1">(EicelExtractieDatum): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:id)&gt;=1">(EicelExtractieDatum): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:id)&lt;=1">(EicelExtractieDatum): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(EicelExtractieDatum): element hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(EicelExtractieDatum): element hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EicelExtractieDatum): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901085
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']
Item: (EicelExtractieDatum)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901085')">(EicelExtractieDatum): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901085' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901085
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:id
Item: (EicelExtractieDatum)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="string(@nullFlavor)=('NI')">(EicelExtractieDatum): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901085
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (EicelExtractieDatum)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901085-2016-12-19T000000.html"
              test="@nullFlavor or (@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')">(EicelExtractieDatum): de elementwaarde MOET een zijn van 'code '177037000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901085
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901085']]/hl7:effectiveTime
Item: (EicelExtractieDatum)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]">
      <extends rule="d297127e67-false-d298225e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@typeCode)=('PERT')">(SubfertiliteitsbehandelingCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901086
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]
Item: (CryoEmbryo)
-->
   <rule id="d297127e67-false-d298225e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']])&gt;=1">(CryoEmbryo): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']])&lt;=1">(CryoEmbryo): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901086
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]
Item: (CryoEmbryo)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="string(@classCode)=('PROC')">(CryoEmbryo): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="string(@moodCode)=('EVN')">(CryoEmbryo): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="@negationInd">(CryoEmbryo): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CryoEmbryo): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086'])&gt;=1">(CryoEmbryo): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086'])&lt;=1">(CryoEmbryo): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:id)&gt;=1">(CryoEmbryo): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:id)&lt;=1">(CryoEmbryo): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:code[(@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(CryoEmbryo): element hl7:code[(@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="count(hl7:code[(@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(CryoEmbryo): element hl7:code[(@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901086
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']
Item: (CryoEmbryo)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901086')">(CryoEmbryo): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901086' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901086
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]/hl7:id
Item: (CryoEmbryo)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="string(@nullFlavor)=('NI')">(CryoEmbryo): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901086
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]/hl7:code[(@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (CryoEmbryo)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901086']]/hl7:code[(@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901086-2016-12-19T000000.html"
              test="@nullFlavor or (@code='236894009' and @codeSystem='2.16.840.1.113883.6.96')">(CryoEmbryo): de elementwaarde MOET een zijn van 'code '236894009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901083
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]
Item: (SubfertiliteitsbehandelingCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]">
      <extends rule="d297127e73-false-d298356e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901083-2016-12-16T163019.html"
              test="string(@typeCode)=('PERT')">(SubfertiliteitsbehandelingCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901087
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]
Item: (EmbryoTransfer)
-->
   <rule id="d297127e73-false-d298356e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']])&gt;=1">(EmbryoTransfer): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']])&lt;=1">(EmbryoTransfer): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901087
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]
Item: (EmbryoTransfer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="string(@classCode)=('PROC')">(EmbryoTransfer): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="string(@moodCode)=('EVN')">(EmbryoTransfer): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="@negationInd">(EmbryoTransfer): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(EmbryoTransfer): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087'])&gt;=1">(EmbryoTransfer): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087'])&lt;=1">(EmbryoTransfer): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:id)&gt;=1">(EmbryoTransfer): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:id)&lt;=1">(EmbryoTransfer): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:code[(@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(EmbryoTransfer): element hl7:code[(@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:code[(@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(EmbryoTransfer): element hl7:code[(@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EmbryoTransfer): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901087
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']
Item: (EmbryoTransfer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901087')">(EmbryoTransfer): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901087' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901087
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:id
Item: (EmbryoTransfer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="string(@nullFlavor)=('NI')">(EmbryoTransfer): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901087
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:code[(@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (EmbryoTransfer)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:code[(@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901087-2016-12-19T000000.html"
              test="@nullFlavor or (@code='75456002' and @codeSystem='2.16.840.1.113883.6.96')">(EmbryoTransfer): de elementwaarde MOET een zijn van 'code '75456002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901087
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901083']]/hl7:outboundRelationship[@typeCode='PERT'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901087']]/hl7:effectiveTime
Item: (EmbryoTransfer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriCT): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="../hl7:pertinentInformation3/hl7:observation[hl7:code/@code='Gravidity']/hl7:value/@value &gt; 1">(RegistrationEventACTPeriCT): Trisomie in anamnese is alleen van toepassing bij graviditeit &gt; 1.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (TrisomyInHistory)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (TrisomyInHistory)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(TrisomyInHistory): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(TrisomyInHistory): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(TrisomyInHistory): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(TrisomyInHistory): element hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(TrisomyInHistory): element hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (TrisomyInHistory)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (TrisomyInHistory)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="@nullFlavor or (@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(TrisomyInHistory): de elementwaarde MOET een zijn van 'code 'TrisomyAnam' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (TrisomyInHistory)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="@xsi:type">(TrisomyInHistory): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901075
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]
Item: (RegistrationEventACTPeriCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901075-2016-12-16T141448.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriCT): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]
Item: (PrenatalecontroleCT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]
Item: (PrenatalecontroleCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="string(@classCode)=('PROC')">(PrenatalecontroleCT): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="string(@moodCode)=('EVN')">(PrenatalecontroleCT): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003'])&gt;=1">(PrenatalecontroleCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003'])&lt;=1">(PrenatalecontroleCT): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:id)&gt;=1">(PrenatalecontroleCT): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:id)&lt;=1">(PrenatalecontroleCT): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(PrenatalecontroleCT): element hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(PrenatalecontroleCT): element hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(PrenatalecontroleCT): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]])&lt;=1">(PrenatalecontroleCT): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]])&lt;=1">(PrenatalecontroleCT): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']
Item: (PrenatalecontroleCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901003')">(PrenatalecontroleCT): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901003' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:id
Item: (PrenatalecontroleCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(PrenatalecontroleCT): attribuut @root MOET datatype 'uid' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(PrenatalecontroleCT): attribuut @extension MOET datatype 'st' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(PrenatalecontroleCT): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (PrenatalecontroleCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="@nullFlavor or (@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')">(PrenatalecontroleCT): de elementwaarde MOET een zijn van 'code '18114009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:effectiveTime
Item: (PrenatalecontroleCT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]
Item: (PrenatalecontroleCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="string(@typeCode)=('COMP')">(PrenatalecontroleCT): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900939
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]
Item: (Rookgedrag)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900939
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]
Item: (Rookgedrag)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="string(@classCode)=('OBS')">(Rookgedrag): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="string(@moodCode)=('EVN')">(Rookgedrag): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939'])&gt;=1">(Rookgedrag): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939'])&lt;=1">(Rookgedrag): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="count(hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Rookgedrag): element hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="count(hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Rookgedrag): element hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Rookgedrag): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Rookgedrag): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900939
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']
Item: (Rookgedrag)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900939')">(Rookgedrag): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900939' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900939
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]/hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Rookgedrag)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]/hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="@nullFlavor or (@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Rookgedrag): de elementwaarde MOET een zijn van 'code 'Rookgedrag' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900939
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Rookgedrag)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900939']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900939-2016-12-06T114703.html"
              test="@xsi:type">(Rookgedrag): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901088
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]
Item: (PrenatalecontroleCT)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901088-2016-12-19T000000.html"
              test="string(@typeCode)=('COMP')">(PrenatalecontroleCT): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]
Item: (BodyWeight)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]
Item: (BodyWeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="string(@classCode)=('OBS')">(BodyWeight): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="string(@moodCode)=('EVN')">(BodyWeight): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571'])&gt;=1">(BodyWeight): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571'])&lt;=1">(BodyWeight): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(BodyWeight): element hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BodyWeight): element hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']
Item: (BodyWeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900571')">(BodyWeight): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900571' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]/hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BodyWeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]/hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="@nullFlavor or (@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')">(BodyWeight): de elementwaarde MOET een zijn van 'code '3141-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (BodyWeight)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.85']]/hl7:pertinentInformation3[hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901003']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900571']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="(@nullFlavor or (@unit='kg'))">(BodyWeight): value MOET eenheid 'kg' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=249.9))">(BodyWeight): value MOET in bereik [0..249.9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2016-12-06T115006.html"
              test="@xsi:type">(BodyWeight): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
