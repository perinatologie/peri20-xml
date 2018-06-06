<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.900927
Name: Aanmelding zwangerschap
Description: Template: Aanmelding zwangerschap (2.2) naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000">
   <title>Aanmelding zwangerschap</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900927
Context: /
Item: (aanmelding-zwangerschap-22)
-->

   <rule context="/" id="d19e31264-false-d310030e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&gt;=1">(aanmelding-zwangerschap-22): element hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&lt;=1">(aanmelding-zwangerschap-22): element hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900927
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]
Item: (aanmelding-zwangerschap-22)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]"
         id="d19e31273-false-d310278e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(aanmelding-zwangerschap-22): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(aanmelding-zwangerschap-22): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:creationTime[not(@nullFlavor)])&gt;=1">(aanmelding-zwangerschap-22): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:creationTime[not(@nullFlavor)])&lt;=1">(aanmelding-zwangerschap-22): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1">(aanmelding-zwangerschap-22): element hl7:versionCode[@code='NICTIZEd2005-Okt'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:versionCode[@code='NICTIZEd2005-Okt'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1">(aanmelding-zwangerschap-22): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&gt;=1">(aanmelding-zwangerschap-22): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:processingCode[@code='P'])&gt;=1">(aanmelding-zwangerschap-22): element hl7:processingCode[@code='P'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:processingCode[@code='P'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:processingCode[@code='P'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:processingModeCode[@code='T'])&gt;=1">(aanmelding-zwangerschap-22): element hl7:processingModeCode[@code='T'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:processingModeCode[@code='T'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:processingModeCode[@code='T'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&gt;=1">(aanmelding-zwangerschap-22): element hl7:acceptAckCode[@code='AL' or @code='NE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:acceptAckCode[@code='AL' or @code='NE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:receiver)&gt;=1">(aanmelding-zwangerschap-22): element hl7:receiver is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:receiver)&lt;=1">(aanmelding-zwangerschap-22): element hl7:receiver komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:sender[not(@nullFlavor)])&gt;=1">(aanmelding-zwangerschap-22): element hl7:sender[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:sender[not(@nullFlavor)])&lt;=1">(aanmelding-zwangerschap-22): element hl7:sender[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
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
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="$interactionVocab">(aanmelding-zwangerschap-22): Transmission: <value-of select="$interactionVocabFile"/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or $isActive">(aanmelding-zwangerschap-22): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet (meer) Actief in <value-of select="$interactionVocabFile"/>
            </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']">(aanmelding-zwangerschap-22): Transmission: er moet in deze interactie exact één AttentionLine met BSN zitten - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or  not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']">(aanmelding-zwangerschap-22): Transmission: er moet in deze interactie exact één AttentionLine met de ContextCode zitten - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk">(aanmelding-zwangerschap-22): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet geconfigureerd voor gebruik van het element <value-of select="local-name()"/> voor BSN in <value-of select="$interactionVocabFile"/> en afzender is niet GBK of GBP</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk">(aanmelding-zwangerschap-22): Transmission: deze interactie <value-of select="$interactionId"/> (<value-of select="$interactionName"/>) is niet geconfigureerd voor gebruik van het element <value-of select="local-name()"/> voor ContextCode in <value-of select="$interactionVocabFile"/> en afzender is niet GBK of GBP</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1">(aanmelding-zwangerschap-22): Transmission: er mag maximaal één AttentionLine met BSN zijn - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1">(aanmelding-zwangerschap-22): Transmission: er mag maximaal één AttentionLine met de ContextCode zijn - <value-of select="$interactionId"/> (<value-of select="$interactionName"/>)</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&gt;=1">(aanmelding-zwangerschap-22): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&lt;=1">(aanmelding-zwangerschap-22): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901030
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]
Item: (MCCI_MT000100_peri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]"
         id="d310393e153-false-d310501e0">
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
         id="d310393e162-false-d310512e0">
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
         id="d310393e171-false-d310527e0">
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
         id="d310393e179-false-d310545e0">
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
         id="d310393e190-false-d310561e0">
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
         id="d310393e200-false-d310581e0">
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
         id="d310393e209-false-d310599e0">
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
         id="d310393e217-false-d310617e0">
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
         id="d310618e31-false-d310638e0">
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
         id="d310618e36-false-d310665e0">
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
         id="d310618e48-false-d310676e0">
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
         id="d310393e233-false-d310690e0">
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
         id="d310687e58-false-d310718e0">
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
         id="d310687e63-false-d310742e0">
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
         id="d310687e73-false-d310761e0">
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
         id="d310393e242-false-d310775e0">
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
         id="d310772e58-false-d310803e0">
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
         id="d310772e63-false-d310827e0">
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
         id="d310772e73-false-d310846e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900927
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]
Item: (aanmelding-zwangerschap-22)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]"
         id="d19e31279-false-d310944e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="string(@moodCode)=('EVN')">(aanmelding-zwangerschap-22): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor])&lt;=1">(aanmelding-zwangerschap-22): element hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(aanmelding-zwangerschap-22): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:authorOrPerformer[not(@nullFlavor)])&gt;=1">(aanmelding-zwangerschap-22): element hl7:authorOrPerformer[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:authorOrPerformer[not(@nullFlavor)])&lt;=1">(aanmelding-zwangerschap-22): element hl7:authorOrPerformer[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="count(hl7:overseer[@typeCode='RESP'])&lt;=1">(aanmelding-zwangerschap-22): element hl7:overseer[@typeCode='RESP'] komt te vaak voor [max 1x].</assert>
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
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="$interactionVocab">(aanmelding-zwangerschap-22): Control Act: <value-of select="$interactionVocabFile"/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN']">(aanmelding-zwangerschap-22): Control Act: <value-of select="local-name()"/>/@moodCode moet 'EVN' zijn bij queries</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode">(aanmelding-zwangerschap-22): Control Act: <value-of select="local-name()"/>/code (Trigger Event) moet bij deze interactie '<value-of select="$interactionTriggerEventCode"/>' zijn, gevonden is echter '<value-of select="$messageTriggerEventCode"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag'">(aanmelding-zwangerschap-22): Control Act: <value-of select="local-name()"/>/authorOrPerformer moet een persoon bevatten in berichten met vertrouwensniveau midden of hoog</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag'">(aanmelding-zwangerschap-22): Control Act: <value-of select="local-name()"/>/overseer moet de mandaterende persoon bevatten in berichten met vertrouwensniveau midden of hoog</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine">(aanmelding-zwangerschap-22): Patiëntgebonden interacties, verzonden vanuit een patiëntenportaal (GBP), moeten een attentionLine hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine">(aanmelding-zwangerschap-22): Patiëntgebonden interacties, verzonden vanuit het klantenloket (GBK), moeten een attentionLine hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1'">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/id. Applicatie-id <value-of select="$authorApplicationId"/> komt niet overeen met Transmission-wrapper sender <value-of select="$senderApplicationId"/>.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/id moet tenminste het UZI-nummer systemen bevatten voor een XIS in een GBZ</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension]">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/id moet de zorgaanbieder van het XIS identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/code/@code moet "P" (Patiënt) zijn. Wettelijke vertegenwoordigers moet dit via het Klantenloket doen en kunnen dus niet als auteur optreden</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/code/@code moet "KLANTENLOKET" zijn voor klantenloketmedewerkers</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/code ontbreekt. Dit is alleen toegestaan als de rolcode 00.000 is.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension]">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/Organization/id moet de zorgaanbieder van de persoon identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/Organization/id/@root moet '2.16.840.1.113883.2.4.3.11.25' bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/Organization/id moet de Nictiz-klantenloket organisatie identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3'])">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/Organization/name moet de zorgaanbieder/organisatienaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7'])">(aanmelding-zwangerschap-22): Control Act: <value-of select="$authorPath"/>/Organization/name moet de Nictiz-klantenloket organisatienaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson) or $overseerPerson/hl7:code">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>/code is verplicht</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>/code/@code moet "P" (Patiënt) zijn of een geldige waarde uit RoleCodeWettelijkeVertegenwoordigerNL</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>/assignedPrincipalChoiceList/assignedPerson/name is verplicht</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>/Organization/id moet de zorgaanbieder van de persoon identificeren</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>//Organization/name moet de zorgaanbiedernaam bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>/Organization/addr moet tennminste de vestigingsplaats bevatten</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice']">(aanmelding-zwangerschap-22): Control Act: <value-of select="$overseerPath"/>/Organization/id. Organisatie van de overseer (<value-of select="$overseerOrgId/@root"/>#<value-of select="$overseerOrgId/@extension"/>) moet gelijk zijn aan die van de authorOrPerformer (<value-of select="$authorOrgId/@extension"/>)</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901034
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor]
Item: (ControlActMasterFileActPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor]"
         id="d310951e198-false-d311107e0">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ControlActMasterFileActPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.1.18')">(ControlActMasterFileActPeriAanmZw): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.1.18''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901034
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:effectiveTime
Item: (ControlActMasterFileActPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:effectiveTime"
         id="d310951e206-false-d311124e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ControlActMasterFileActPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="not(*)">(ControlActMasterFileActPeriAanmZw): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901041
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer
Item: (ControlActAuthorOrPerformerPeri)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer"
         id="d311125e114-false-d311185e0">
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
         id="d311125e124-false-d311308e0">
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
         id="d312359e67-false-d312394e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901034
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]
Item: (ControlActMasterFileActPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]"
         id="d310951e234-false-d313024e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="string(@typeCode)=('SUBJ') or not(@typeCode)">(ControlActMasterFileActPeriAanmZw): de waarde van @typeCode MOET 'SUBJ' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="string(@contextConductionInd)=('false') or not(@contextConductionInd)">(ControlActMasterFileActPeriAanmZw): de waarde van @contextConductionInd MOET 'false' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&gt;=1">(ControlActMasterFileActPeriAanmZw): element hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&lt;=1">(ControlActMasterFileActPeriAanmZw): element hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]"
         id="d313036e25-false-d313109e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="string(@classCode)=('REG') or not(@classCode)">(RegistrationEventACTPeriAanmZw): de waarde van @classCode MOET 'REG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="@moodCode">(RegistrationEventACTPeriAanmZw): attribute @moodCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.10196-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(@moodCode) or count($theAttValue) = count($theAttCheck)">(RegistrationEventACTPeriAanmZw): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10196' ActMood (2011-07-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:statusCode[@code='active' or @nullFlavor])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:statusCode[@code='active' or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:statusCode[@code='active' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:effectiveTime)&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:effectiveTime)&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:subject1)=0">(RegistrationEventACTPeriAanmZw): element hl7:subject1 MAG NIET voorkomen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:id
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:id"
         id="d313036e34-false-d313214e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="sendingId"
           value="string-join(../../../../hl7:sender/hl7:device/hl7:id/(@root|@extension),'#')"/>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]"
         id="d313036e39-false-d313226e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="@nullFlavor or (@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')">(RegistrationEventACTPeriAanmZw): de elementwaarde MOET een zijn van 'code '900000' codeSystem '2.16.840.1.113883.2.4.15.4''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code='active' or @nullFlavor]
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code='active' or @nullFlavor]"
         id="d313036e44-false-d313244e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="@nullFlavor or (@code='active')">(RegistrationEventACTPeriAanmZw): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime"
         id="d313036e50-false-d313261e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(@value)">(RegistrationEventACTPeriAanmZw): attribute @value MAG NIET voorkomen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="string(@nullFlavor)=('UNK') or not(@nullFlavor)">(RegistrationEventACTPeriAanmZw): de waarde van @nullFlavor MOET 'UNK' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:low)&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:low komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/hl7:low
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/hl7:low"
         id="d313036e56-false-d313287e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="string(@nullFlavor)=('UNK') or not(@nullFlavor)">(RegistrationEventACTPeriAanmZw): de waarde van @nullFlavor MOET 'UNK' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject1
Item: (RegistrationEventACTPeriAanmZw)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]"
         id="d313036e67-false-d313332e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]"
         id="d313036e69-false-d313401e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:statusCode[@code='active' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:performer[@typeCode='PPRF'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:performer[@typeCode='PPRF'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])&gt;=1">(RegistrationEventACTPeriAanmZw): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])&lt;=1">(RegistrationEventACTPeriAanmZw): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']"
         id="d313036e71-false-d313509e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900927')">(RegistrationEventACTPeriAanmZw): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900927' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900002
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:id[not(@nullFlavor)]
Item: (CareProvisionID)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:id[not(@nullFlavor)]"
         id="d313510e18-false-d313525e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900002-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CareProvisionID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:statusCode[@code='active' or @nullFlavor]
Item: (RegistrationEventACTPeriAanmZw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:statusCode[@code='active' or @nullFlavor]"
         id="d313036e80-false-d313537e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="@nullFlavor or (@code='active')">(RegistrationEventACTPeriAanmZw): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']"
         id="d313538e18-false-d313568e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="string(@typeCode)=('SBJ')">(Vrouwcounseling2): de waarde van @typeCode MOET 'SBJ' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]"
         id="d313538e30-false-d313610e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="string(@classCode)=('PAT')">(Vrouwcounseling2): de waarde van @classCode MOET 'PAT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:id)&gt;0">(Vrouwcounseling2): identification mother requires either a BSN or a local id or both</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:id)&gt;=1">(Vrouwcounseling2): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:id)&lt;=1">(Vrouwcounseling2): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:addr)&lt;=1">(Vrouwcounseling2): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:statusCode[@code='active'])&gt;=1">(Vrouwcounseling2): element hl7:statusCode[@code='active'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:statusCode[@code='active'])&lt;=1">(Vrouwcounseling2): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1">(Vrouwcounseling2): element hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1">(Vrouwcounseling2): element hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900028
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id"
         id="d313624e27-false-d313695e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.3') or not(@root)">(Burgerservicenummer): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900029
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id
Item: (Lokalepersoonsidentificatie)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id"
         id="d313696e18-false-d313711e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900029-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Lokalepersoonsidentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900148
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr
Item: (Adresvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr"
         id="d313712e16-false-d313723e0">
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
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr/hl7:postalCode
Item: (Adresvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr/hl7:postalCode"
         id="d313712e49-false-d313781e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Adresvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:statusCode[@code='active']
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:statusCode[@code='active']"
         id="d313538e50-false-d313793e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Vrouwcounseling2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="@nullFlavor or (@code='active')">(Vrouwcounseling2): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900923
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Vrouwcounseling2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d313538e60-false-d313820e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="string(@classCode)=('PSN')">(Vrouwcounseling2): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(Vrouwcounseling2): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:name)&gt;=1">(Vrouwcounseling2): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:name)&lt;=2">(Vrouwcounseling2): element hl7:name komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:birthTime[not(@nullFlavor)])&gt;=1">(Vrouwcounseling2): element hl7:birthTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:birthTime[not(@nullFlavor)])&lt;=1">(Vrouwcounseling2): element hl7:birthTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Vrouwcounseling2): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Vrouwcounseling2): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900925
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (Naamvrouw2)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d313838e25-false-d313890e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900925-2014-01-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamvrouw2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900031
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (Geboortedatumvrouw)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d313891e16-false-d313902e0">
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
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Etniciteit)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d313903e20-false-d313920e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']"
         id="d313921e27-false-d313948e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@typeCode)=('PPRF')">(ZorgverlenerInstellingZonderType): de waarde van @typeCode MOET 'PPRF' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:responsibleParty[@classCode='ASSIGNED'])&gt;=1">(ZorgverlenerInstellingZonderType): element hl7:responsibleParty[@classCode='ASSIGNED'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:responsibleParty[@classCode='ASSIGNED'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:responsibleParty[@classCode='ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']"
         id="d313921e81-false-d313978e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@classCode)=('ASSIGNED')">(ZorgverlenerInstellingZonderType): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="$elmcount&gt;=1">(ZorgverlenerInstellingZonderType): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:agentPerson)&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:agentPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)])&gt;=1">(ZorgverlenerInstellingZonderType): element hl7:representedOrganization[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:representedOrganization[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d313921e87-false-d314051e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.1')">(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d313921e92-false-d314067e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
         id="d313921e97-false-d314083e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.2')">(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson
Item: (ZorgverlenerInstellingZonderType)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson
Item: (Naamzorgverlener)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson/hl7:name
Item: (Naamzorgverlener)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]"
         id="d313921e110-false-d314139e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="$elmcount&lt;=3">(ZorgverlenerInstellingZonderType): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']) bevat te veel elementen [max 3x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="count(hl7:name)&lt;=1">(ZorgverlenerInstellingZonderType): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]"
         id="d313921e112-false-d314205e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d313921e116-false-d314217e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d313921e121-false-d314233e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900926
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorgverlenerInstellingZonderType)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']"
         id="d313921e126-false-d314249e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.96.6')">(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900025
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:name
Item: (Naamzorginstelling)
-->

   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:name"
         id="d314250e18-false-d314265e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900025-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorginstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901035
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]
Item: (RegistrationEventACTPeriAanmZw)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]">
      <extends rule="d313036e101-false-d314299e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="string(@typeCode)=('PERT')">(RegistrationEventACTPeriAanmZw): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="string(@contextConductionInd)=('true')">(RegistrationEventACTPeriAanmZw): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900935
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]
Item: (RedenVerzendingAanmeldingZwangerschap)
-->
   <rule id="d313036e101-false-d314299e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="count(hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])&gt;=1">(RedenVerzendingAanmeldingZwangerschap): element hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="count(hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])&lt;=1">(RedenVerzendingAanmeldingZwangerschap): element hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900935
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]
Item: (RedenVerzendingAanmeldingZwangerschap)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="count(hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&gt;=1">(RedenVerzendingAanmeldingZwangerschap): element hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="count(hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&lt;=1">(RedenVerzendingAanmeldingZwangerschap): element hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="count(hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&gt;=1">(RedenVerzendingAanmeldingZwangerschap): element hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="count(hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&lt;=1">(RedenVerzendingAanmeldingZwangerschap): element hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900935
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]
Item: (RedenVerzendingAanmeldingZwangerschap)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="@nullFlavor or (@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')">(RedenVerzendingAanmeldingZwangerschap): de elementwaarde MOET een zijn van 'code 'RedenVerzending' codeSystem '2.16.840.1.113883.2.4.4.13.53''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900935
Context: /hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]
Item: (RedenVerzendingAanmeldingZwangerschap)
-->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="@nullFlavor or (@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')">(RedenVerzendingAanmeldingZwangerschap): de elementwaarde MOET een zijn van 'code 'aan' codeSystem '2.16.840.1.113883.2.4.4.13.53''.</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(RedenVerzendingAanmeldingZwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
