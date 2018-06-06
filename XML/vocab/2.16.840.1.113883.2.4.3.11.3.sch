<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="urn:hl7-org:v3" prefix="hl7"/>
    <ns uri="urn:Nictiz.AORTA.CareApplicationData" prefix="cad"/>
    <ns uri="urn:Nictiz.AORTA.XISApplicationData" prefix="xad"/>
    <let name="zorgtoepassingsrollenFile" value="'../configuratie/Zorgtoepassingsrollen/Zorgtoepassingsrollen.xml'"/>

    <pattern>
        <title>code</title>
        <rule context="hl7:code">
            <let name="systeemrolId" value="@code"/>
            <assert test="document($zorgtoepassingsrollenFile)/*/cad:CareApplicationRole/cad:CARName[.=$systeemrolId]"
                >Systeemrol <value-of select="$systeemrolId"/> moet bestaan in <value-of select="$zorgtoepassingsrollenFile"/></assert>
        </rule>
    </pattern>
</schema>