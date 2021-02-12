<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <title>Schematron file for transaction Kernset Neonatologie 3.0 (2.16.840.1.113883.2.4.3.11.60.90.77.4.2446 2018-06-01T15:07:24)</title>
   <ns uri="urn:hl7-org:v3" prefix="hl7"/>
   <ns uri="urn:hl7-org:v3" prefix="cda"/>
   <ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
   <!-- Add extra namespaces -->
   <ns uri="urn:nictiz-nl:v3/peri" prefix="peri"/>
   <ns uri="http://art-decor.org/ns/decor" prefix="decor"/>
   <ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
   <ns uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
   <ns uri="urn:hl7-nl:v3" prefix="hl7nl"/>
   <ns uri="urn:ihe:pharm:medication" prefix="pharm"/>
   <ns uri="urn:oid:1.3.6.1.4.1.19376.1.3.2" prefix="lab"/>
   <ns uri="urn:urn:nictiz-nl:v3/nfu" prefix="nfu"/>
   <!-- Include realm specific schematron -->
   <!-- Include datatype abstract schematrons -->
   <pattern>
      <include href="include/DTr1_AD.sch"/>
      <include href="include/DTr1_AD.CA.sch"/>
      <include href="include/DTr1_AD.CA.BASIC.sch"/>
      <include href="include/DTr1_AD.DE.sch"/>
      <include href="include/DTr1_AD.EPSOS.sch"/>
      <include href="include/DTr1_AD.IPS.sch"/>
      <include href="include/DTr1_AD.NL.sch"/>
      <include href="include/DTr1_ADXP.sch"/>
      <include href="include/DTr1_ANY.sch"/>
      <include href="include/DTr1_BIN.sch"/>
      <include href="include/DTr1_BL.sch"/>
      <include href="include/DTr1_BN.sch"/>
      <include href="include/DTr1_BXIT_IVL_PQ.sch"/>
      <include href="include/DTr1_CD.sch"/>
      <include href="include/DTr1_CD.EPSOS.sch"/>
      <include href="include/DTr1_CD.IPS.sch"/>
      <include href="include/DTr1_CD.SDTC.sch"/>
      <include href="include/DTr1_CE.sch"/>
      <include href="include/DTr1_CE.EPSOS.sch"/>
      <include href="include/DTr1_CE.IPS.sch"/>
      <include href="include/DTr1_CO.sch"/>
      <include href="include/DTr1_CO.EPSOS.sch"/>
      <include href="include/DTr1_CR.sch"/>
      <include href="include/DTr1_CS.sch"/>
      <include href="include/DTr1_CS.LANG.sch"/>
      <include href="include/DTr1_CV.sch"/>
      <include href="include/DTr1_CV.EPSOS.sch"/>
      <include href="include/DTr1_CV.IPS.sch"/>
      <include href="include/DTr1_ED.sch"/>
      <include href="include/DTr1_EIVL.event.sch"/>
      <include href="include/DTr1_EIVL_TS.sch"/>
      <include href="include/DTr1_EN.sch"/>
      <include href="include/DTr1_ENXP.sch"/>
      <include href="include/DTr1_hl7nl-INT.sch"/>
      <include href="include/DTr1_hl7nl-IVL_QTY.sch"/>
      <include href="include/DTr1_hl7nl-IVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PIVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PQ.sch"/>
      <include href="include/DTr1_hl7nl-QSET_QTY.sch"/>
      <include href="include/DTr1_hl7nl-RTO.sch"/>
      <include href="include/DTr1_hl7nl-TS.sch"/>
      <include href="include/DTr1_II.sch"/>
      <include href="include/DTr1_II.AT.ATU.sch"/>
      <include href="include/DTr1_II.AT.BLZ.sch"/>
      <include href="include/DTr1_II.AT.DVR.sch"/>
      <include href="include/DTr1_II.AT.KTONR.sch"/>
      <include href="include/DTr1_II.EPSOS.sch"/>
      <include href="include/DTr1_II.NL.AGB.sch"/>
      <include href="include/DTr1_II.NL.BIG.sch"/>
      <include href="include/DTr1_II.NL.BSN.sch"/>
      <include href="include/DTr1_II.NL.URA.sch"/>
      <include href="include/DTr1_II.NL.UZI.sch"/>
      <include href="include/DTr1_INT.sch"/>
      <include href="include/DTr1_INT.NONNEG.sch"/>
      <include href="include/DTr1_INT.POS.sch"/>
      <include href="include/DTr1_IVL_INT.sch"/>
      <include href="include/DTr1_IVL_MO.sch"/>
      <include href="include/DTr1_IVL_PQ.sch"/>
      <include href="include/DTr1_IVL_REAL.sch"/>
      <include href="include/DTr1_IVL_TS.sch"/>
      <include href="include/DTr1_IVL_TS.CH.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_IVL_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_IVXB_INT.sch"/>
      <include href="include/DTr1_IVXB_MO.sch"/>
      <include href="include/DTr1_IVXB_PQ.sch"/>
      <include href="include/DTr1_IVXB_REAL.sch"/>
      <include href="include/DTr1_IVXB_TS.sch"/>
      <include href="include/DTr1_MO.sch"/>
      <include href="include/DTr1_ON.sch"/>
      <include href="include/DTr1_PIVL_TS.sch"/>
      <include href="include/DTr1_PN.sch"/>
      <include href="include/DTr1_PN.CA.sch"/>
      <include href="include/DTr1_PN.NL.sch"/>
      <include href="include/DTr1_PQ.sch"/>
      <include href="include/DTr1_PQR.sch"/>
      <include href="include/DTr1_QTY.sch"/>
      <include href="include/DTr1_REAL.sch"/>
      <include href="include/DTr1_REAL.NONNEG.sch"/>
      <include href="include/DTr1_REAL.POS.sch"/>
      <include href="include/DTr1_RTO.sch"/>
      <include href="include/DTr1_RTO_PQ_PQ.sch"/>
      <include href="include/DTr1_RTO_QTY_QTY.sch"/>
      <include href="include/DTr1_SC.sch"/>
      <include href="include/DTr1_SD.TEXT.sch"/>
      <include href="include/DTr1_ST.sch"/>
      <include href="include/DTr1_SXCM_INT.sch"/>
      <include href="include/DTr1_SXCM_MO.sch"/>
      <include href="include/DTr1_SXCM_PQ.sch"/>
      <include href="include/DTr1_SXCM_REAL.sch"/>
      <include href="include/DTr1_SXCM_TS.sch"/>
      <include href="include/DTr1_SXPR_TS.sch"/>
      <include href="include/DTr1_TEL.sch"/>
      <include href="include/DTr1_TEL.AT.sch"/>
      <include href="include/DTr1_TEL.CA.EMAIL.sch"/>
      <include href="include/DTr1_TEL.CA.PHONE.sch"/>
      <include href="include/DTr1_TEL.EPSOS.sch"/>
      <include href="include/DTr1_TEL.IPS.sch"/>
      <include href="include/DTr1_TEL.NL.EXTENDED.sch"/>
      <include href="include/DTr1_thumbnail.sch"/>
      <include href="include/DTr1_TN.sch"/>
      <include href="include/DTr1_TS.sch"/>
      <include href="include/DTr1_TS.AT.TZ.sch"/>
      <include href="include/DTr1_TS.CH.TZ.sch"/>
      <include href="include/DTr1_TS.DATE.sch"/>
      <include href="include/DTr1_TS.DATE.FULL.sch"/>
      <include href="include/DTr1_TS.DATE.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIME.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIMETZ.MIN.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_URL.sch"/>
      <include href="include/DTr1_URL.NL.EXTENDED.sch"/>
   </pattern>

   <!-- Include the project schematrons related to scenario ksneo-alg-30 -->

   <!-- CDAKsNeoClinicalDocumentNLHeader -->
   <pattern>
      <title>CDAKsNeoClinicalDocumentNLHeader</title>
      <rule context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:ClinicalDocument[hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']]"
                 see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901181-2018-11-07T170819.html">(CDAKsNeoClinicalDocumentNLHeader): In de instance werd het volgende element verwacht: descendant-or-self::hl7:ClinicalDocument[hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']]</assert>
      </rule>
   </pattern>
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901181-2018-11-07T170819.sch"/>
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901181-2018-11-07T170819-closed.sch"/>


   <!-- Create phases for more targeted validation on large instances -->
   <phase id="AllExceptClosed">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901181-2018-11-07T170819"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.26-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.8-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.9-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.18-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.27-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.29-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.35-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.3.19-2017-10-25T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.3.20-2017-10-25T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.3.23-2017-10-25T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.54-2019-05-31T125008"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.55-2019-07-08T135422"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.56-2019-09-16T154439"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.900293-2018-11-03T172204"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901111-2018-11-02T115214"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901113-2018-11-02T122311"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901116-2018-11-02T134343"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901123-2018-11-02T160714"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901131-2018-11-03T150908"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901140-2018-11-06T091329"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901142-2018-11-06T102525"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901144-2018-11-06T104340"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901155-2018-11-06T184224"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901156-2018-11-06T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901164-2018-11-07T121358"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901166-2018-11-07T123217"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901167-2018-11-07T131642"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901171-2018-11-07T154316"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901175-2018-11-07T161339"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901183-2018-11-07T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901186-2018-11-07T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901191-2018-11-08T093237"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901194-2018-11-08T110327"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901203-2018-11-08T124108"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901205-2018-11-08T135455"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901207-2018-11-08T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901210-2018-11-08T143239"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901212-2018-11-08T144724"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901216-2019-05-31T145950"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901219-2019-05-31T174247"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901222-2019-06-01T133408"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901223-2019-06-01T134459"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901224-2019-07-04T110142"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901226-2019-07-04T193946"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901238-2019-07-16T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901240-2019-09-24T000000"/>
   </phase>
   <phase id="CDAKsNeoClinicalDocumentNLHeader">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901181-2018-11-07T170819"/>
   </phase>
   <phase id="CDAKsNeoClinicalDocumentNLHeader-closed">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901181-2018-11-07T170819-closed"/>
   </phase>
   <phase id="MPCDAverifierzorgverlener">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500"/>
   </phase>
   <phase id="zorgverlener-assignedEntity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.26-2018-06-11T000000"/>
   </phase>
   <phase id="informant">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000"/>
   </phase>
   <phase id="toelichting-20180611T000000">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2018-06-11T000000"/>
   </phase>
   <phase id="playingEntity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.8-2018-06-11T000000"/>
   </phase>
   <phase id="scopingEntity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.9-2018-06-11T000000"/>
   </phase>
   <phase id="severity_observation-20180611T000000">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.18-2018-06-11T000000"/>
   </phase>
   <phase id="product_instance">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000"/>
   </phase>
   <phase id="zorgverlener-participantRole-body-20180611T000000">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.27-2018-06-11T000000"/>
   </phase>
   <phase id="participant_LOC">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.3.29-2018-06-11T000000"/>
   </phase>
   <phase id="contactpersoon-header">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.35-2018-06-11T000000"/>
   </phase>
   <phase id="problem_active">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.3.19-2017-10-25T000000"/>
   </phase>
   <phase id="problem_status_active">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.3.20-2017-10-25T000000"/>
   </phase>
   <phase id="procedure_activity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.3.23-2017-10-25T000000"/>
   </phase>
   <phase id="problem_verificationstatus">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.54-2019-05-31T125008"/>
   </phase>
   <phase id="schedelomvang">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.55-2019-07-08T135422"/>
   </phase>
   <phase id="lichaamstemperatuur-20190916T154439">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.56-2019-09-16T154439"/>
   </phase>
   <phase id="Apgarscorena1min">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.900293-2018-11-03T172204"/>
   </phase>
   <phase id="TypePartus23">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810"/>
   </phase>
   <phase id="MaternalInformation">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901111-2018-11-02T115214"/>
   </phase>
   <phase id="ZwangerschapObsKernsetNeo">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901113-2018-11-02T122311"/>
   </phase>
   <phase id="CDAGravidity">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812"/>
   </phase>
   <phase id="CDAParity">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901116-2018-11-02T134343"/>
   </phase>
   <phase id="CDAKsNeoProcAntSter">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932"/>
   </phase>
   <phase id="CDAKsNeoSubsAdmMagnSulf">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035"/>
   </phase>
   <phase id="NeonatalDeliveryInformation">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231"/>
   </phase>
   <phase id="CDAKsNeoDeliveryInformationProc">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901123-2018-11-02T160714"/>
   </phase>
   <phase id="CDAKsNeoTypeLocPartus">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242"/>
   </phase>
   <phase id="CDAKsNeoLocPartus">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304"/>
   </phase>
   <phase id="CDAKsNeoAssTherBefAdmSection">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559"/>
   </phase>
   <phase id="CDAKsNeoAdmissionSection">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748"/>
   </phase>
   <phase id="CDAKsNeoProcAdmission">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342"/>
   </phase>
   <phase id="CDAKernsNeoAdmissionRson">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631"/>
   </phase>
   <phase id="CDAAdmICU">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901131-2018-11-03T150908"/>
   </phase>
   <phase id="CDAReAdmission">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009"/>
   </phase>
   <phase id="CDAKsNeoPhysExmProc">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700"/>
   </phase>
   <phase id="LocationBefAdm">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229"/>
   </phase>
   <phase id="CDAUmbCordBE">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901140-2018-11-06T091329"/>
   </phase>
   <phase id="CDAKsNeoProblChild">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845"/>
   </phase>
   <phase id="CDABirthTraumaOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901142-2018-11-06T102525"/>
   </phase>
   <phase id="CDAKsNeoRespiratoirOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901144-2018-11-06T104340"/>
   </phase>
   <phase id="CDAO2Day28">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851"/>
   </phase>
   <phase id="CDAKsNeoStartLoc">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901155-2018-11-06T184224"/>
   </phase>
   <phase id="CDAKsNeoRespSubstAdm">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901156-2018-11-06T000000"/>
   </phase>
   <phase id="CDAKsNeoCircOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508"/>
   </phase>
   <phase id="CDAKsNeoOrganizerInfectieus">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901164-2018-11-07T121358"/>
   </phase>
   <phase id="CDAKsNeoInfProc">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901166-2018-11-07T123217"/>
   </phase>
   <phase id="CDAKsNeoGastroOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901167-2018-11-07T131642"/>
   </phase>
   <phase id="CDAKsNeoMetaEndoOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901171-2018-11-07T154316"/>
   </phase>
   <phase id="CDAKsNeoHemaOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901175-2018-11-07T161339"/>
   </phase>
   <phase id="CDAKsNervSystOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901183-2018-11-07T000000"/>
   </phase>
   <phase id="CDAKsNeoSensesOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901186-2018-11-07T000000"/>
   </phase>
   <phase id="CDAObsAbnormal">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901191-2018-11-08T093237"/>
   </phase>
   <phase id="CDAKsNeoCongOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901194-2018-11-08T110327"/>
   </phase>
   <phase id="CDAKsNeoSectionDischTransfer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637"/>
   </phase>
   <phase id="CDAKsNeoProcPhysExmDischTransf">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443"/>
   </phase>
   <phase id="CDAKsNeoProcDischSupport">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901203-2018-11-08T124108"/>
   </phase>
   <phase id="CDAKsNeoSectionMortality">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106"/>
   </phase>
   <phase id="CDAKsNeoObsMortality">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901205-2018-11-08T135455"/>
   </phase>
   <phase id="CDAObsDeath12HrsNicu">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000"/>
   </phase>
   <phase id="CDAObsDeathCause">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901207-2018-11-08T000000"/>
   </phase>
   <phase id="CDAObsDeathDeliveryroom">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000"/>
   </phase>
   <phase id="CDAObsDeathICTreatmentStopped">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000"/>
   </phase>
   <phase id="CDAKsNeoSectionFollowup">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901210-2018-11-08T143239"/>
   </phase>
   <phase id="CDAKsNeoOrganizerFollowUpDischarge">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748"/>
   </phase>
   <phase id="CDAProblemRespBPD">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901212-2018-11-08T144724"/>
   </phase>
   <phase id="ZwangerschapsduurBijGeboorte">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901216-2019-05-31T145950"/>
   </phase>
   <phase id="CDAKsNeoRespSupportOrganizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901219-2019-05-31T174247"/>
   </phase>
   <phase id="CDAKsNeoMicroOrg">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901222-2019-06-01T133408"/>
   </phase>
   <phase id="EarlyOnset">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901223-2019-06-01T134459"/>
   </phase>
   <phase id="medisch_hulpmiddel_organizer">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901224-2019-07-04T110142"/>
   </phase>
   <phase id="CDAKsNeoOrganizerInfuus">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901226-2019-07-04T193946"/>
   </phase>
   <phase id="CDAObsAntibiot1st3days">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901238-2019-07-16T000000"/>
   </phase>
   <phase id="LateOnset">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901240-2019-09-24T000000"/>
   </phase>

   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->

   <!-- MPCDAverifierzorgverlener -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.sch"/>
   <!-- zorgverlener-assignedEntity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.26-2018-06-11T000000.sch"/>
   <!-- informant -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.sch"/>
   <!-- toelichting -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2018-06-11T000000.sch"/>
   <!-- playingEntity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.8-2018-06-11T000000.sch"/>
   <!-- scopingEntity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.9-2018-06-11T000000.sch"/>
   <!-- severity_observation -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.3.18-2018-06-11T000000.sch"/>
   <!-- product_instance -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.3.21-2018-06-11T000000.sch"/>
   <!-- zorgverlener-participantRole-body -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.3.27-2018-06-11T000000.sch"/>
   <!-- participant_LOC -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.3.29-2018-06-11T000000.sch"/>
   <!-- contactpersoon-header -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.35-2018-06-11T000000.sch"/>
   <!-- problem_active -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.3.19-2017-10-25T000000.sch"/>
   <!-- problem_status_active -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.3.20-2017-10-25T000000.sch"/>
   <!-- procedure_activity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.3.23-2017-10-25T000000.sch"/>
   <!-- problem_verificationstatus -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.54-2019-05-31T125008.sch"/>
   <!-- schedelomvang -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.55-2019-07-08T135422.sch"/>
   <!-- lichaamstemperatuur -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.56-2019-09-16T154439.sch"/>
   <!-- Apgarscorena1min -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.900293-2018-11-03T172204.sch"/>
   <!-- TypePartus23 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.sch"/>
   <!-- MaternalInformation -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901111-2018-11-02T115214.sch"/>
   <!-- ZwangerschapObsKernsetNeo -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901113-2018-11-02T122311.sch"/>
   <!-- CDAGravidity -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.sch"/>
   <!-- CDAParity -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901116-2018-11-02T134343.sch"/>
   <!-- CDAKsNeoProcAntSter -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901120-2018-11-02T150932.sch"/>
   <!-- CDAKsNeoSubsAdmMagnSulf -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901121-2018-11-02T153035.sch"/>
   <!-- NeonatalDeliveryInformation -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901122-2018-11-02T155231.sch"/>
   <!-- CDAKsNeoDeliveryInformationProc -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901123-2018-11-02T160714.sch"/>
   <!-- CDAKsNeoTypeLocPartus -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.sch"/>
   <!-- CDAKsNeoLocPartus -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.sch"/>
   <!-- CDAKsNeoAssTherBefAdmSection -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.sch"/>
   <!-- CDAKsNeoAdmissionSection -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901128-2018-11-03T142748.sch"/>
   <!-- CDAKsNeoProcAdmission -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.sch"/>
   <!-- CDAKernsNeoAdmissionRson -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.sch"/>
   <!-- CDAAdmICU -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901131-2018-11-03T150908.sch"/>
   <!-- CDAReAdmission -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.sch"/>
   <!-- CDAKsNeoPhysExmProc -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.sch"/>
   <!-- LocationBefAdm -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.sch"/>
   <!-- CDAUmbCordBE -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901140-2018-11-06T091329.sch"/>
   <!-- CDAKsNeoProblChild -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.sch"/>
   <!-- CDABirthTraumaOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901142-2018-11-06T102525.sch"/>
   <!-- CDAKsNeoRespiratoirOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901144-2018-11-06T104340.sch"/>
   <!-- CDAO2Day28 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.sch"/>
   <!-- CDAKsNeoStartLoc -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901155-2018-11-06T184224.sch"/>
   <!-- CDAKsNeoRespSubstAdm -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901156-2018-11-06T000000.sch"/>
   <!-- CDAKsNeoCircOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.sch"/>
   <!-- CDAKsNeoOrganizerInfectieus -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901164-2018-11-07T121358.sch"/>
   <!-- CDAKsNeoInfProc -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901166-2018-11-07T123217.sch"/>
   <!-- CDAKsNeoGastroOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901167-2018-11-07T131642.sch"/>
   <!-- CDAKsNeoMetaEndoOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901171-2018-11-07T154316.sch"/>
   <!-- CDAKsNeoHemaOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901175-2018-11-07T161339.sch"/>
   <!-- CDAKsNervSystOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901183-2018-11-07T000000.sch"/>
   <!-- CDAKsNeoSensesOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901186-2018-11-07T000000.sch"/>
   <!-- CDAObsAbnormal -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901191-2018-11-08T093237.sch"/>
   <!-- CDAKsNeoCongOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901194-2018-11-08T110327.sch"/>
   <!-- CDAKsNeoSectionDischTransfer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.sch"/>
   <!-- CDAKsNeoProcPhysExmDischTransf -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.sch"/>
   <!-- CDAKsNeoProcDischSupport -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901203-2018-11-08T124108.sch"/>
   <!-- CDAKsNeoSectionMortality -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.sch"/>
   <!-- CDAKsNeoObsMortality -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901205-2018-11-08T135455.sch"/>
   <!-- CDAObsDeath12HrsNicu -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.sch"/>
   <!-- CDAObsDeathCause -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901207-2018-11-08T000000.sch"/>
   <!-- CDAObsDeathDeliveryroom -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.sch"/>
   <!-- CDAObsDeathICTreatmentStopped -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.sch"/>
   <!-- CDAKsNeoSectionFollowup -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901210-2018-11-08T143239.sch"/>
   <!-- CDAKsNeoOrganizerFollowUpDischarge -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901211-2018-11-08T143748.sch"/>
   <!-- CDAProblemRespBPD -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901212-2018-11-08T144724.sch"/>
   <!-- ZwangerschapsduurBijGeboorte -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901216-2019-05-31T145950.sch"/>
   <!-- CDAKsNeoRespSupportOrganizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901219-2019-05-31T174247.sch"/>
   <!-- CDAKsNeoMicroOrg -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901222-2019-06-01T133408.sch"/>
   <!-- EarlyOnset -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901223-2019-06-01T134459.sch"/>
   <!-- medisch_hulpmiddel_organizer -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901224-2019-07-04T110142.sch"/>
   <!-- CDAKsNeoOrganizerInfuus -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901226-2019-07-04T193946.sch"/>
   <!-- CDAObsAntibiot1st3days -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901238-2019-07-16T000000.sch"/>
   <!-- LateOnset -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901240-2019-09-24T000000.sch"/>

</schema>
