<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <title>Schematron file for transaction Uitkomst bericht fase 1c vanuit 1e lijn naar registraties (2.16.840.1.113883.2.4.3.11.60.90.77.4.401 2011-01-28T00:00:00)</title>
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
      <include href="include/DTr1_hl7nl-IVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PIVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PQ.sch"/>
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

   <!-- Include the project schematrons related to scenario uitkomst-1c-1el -->

   <!-- uitkomst-1c-1el -->
   <pattern>
      <title>uitkomst-1c-1el</title>
      <rule context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51'] | descendant-or-self::hl7:id[not(@nullFlavor)] | descendant-or-self::hl7:statusCode[@code = 'active' or @nullFlavor] | descendant-or-self::hl7:effectiveTime | descendant-or-self::hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']] | descendant-or-self::hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | descendant-or-self::hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]"
                 see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html">(uitkomst-1c-1el): In de instance werd tenminste één van de volgende elementen verwacht: descendant-or-self::hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51'] | descendant-or-self::hl7:id[not(@nullFlavor)] | descendant-or-self::hl7:statusCode[@code = 'active' or @nullFlavor] | descendant-or-self::hl7:effectiveTime | descendant-or-self::hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']] | descendant-or-self::hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | descendant-or-self::hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | descendant-or-self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]</assert>
      </rule>
   </pattern>
   <include href="include/2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.sch"/>
   <include href="include/2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000-closed.sch"/>


   <!-- Create phases for more targeted validation on large instances -->


   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->



</schema>
