<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3"
    xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" version="2.0" exclude-result-prefixes="#all">
    
    <!--
        Date:       2012-04-17
        Suited for: demo purpose. Potentially as starting point for testing solutions
        
        Expected input: 
            svrl output document produced by Schematrons that were converted to SVRL stylesheets. See schematron.com for instructions. In short:
            - *.sch via iso_dsdl_include.xsl -> iso_abstract_expand.xsl -> iso_svrl_for_xslt2.xsl to *.xsl
        Expected parameter: 
            inputMessage containing the full or relative path to original input message
        
        Purpose:
            Creates an MCCI_IN000002 containing the errors and/or warnings that the SVRL output contained. Note that the MCCI_IN000002 is created regardless of
            the inputMessage interaction. Application acknowledgements are not supported by this XSLT.
            Acknowledgment.typeCode in MCCI_IN000002 shall be one of CA (Accept) or CE (Error). The transformation supports asserts without @role or with @role=
            'error' as ERROR, and supports other asserts and reports as WARNING.
    -->
    
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <!-- Must contain full or relative path to original input message -->
    <xsl:param name="inputMessage" required="yes"/>
    <!-- Replace backslashes in Windows paths with forward slashes -->
    <xsl:variable name="inputMessageNormalized" select="replace($inputMessage,'\\','/')"/>
    
    <!-- Message id of input message to return as targetMessageId -->
    <xsl:variable name="ip_MessageId">
        <xsl:copy-of select="(document($inputMessageNormalized)//hl7:id)[1]" copy-namespaces="no"/>
    </xsl:variable>
    <!-- Sender id of input message to return as receiver id -->
    <xsl:variable name="ip_MessageSenderId">
        <xsl:copy-of select="(document($inputMessageNormalized)//hl7:sender/hl7:device/hl7:id)[1]" copy-namespaces="no"/>
    </xsl:variable>
    <!-- Receiver id of input message to return as sender id -->
    <xsl:variable name="ip_MessageReceiverId">
        <xsl:copy-of select="(document($inputMessageNormalized)//hl7:receiver/hl7:device/hl7:id)[1]" copy-namespaces="no"/>
    </xsl:variable>
    
    <!-- Acknowledgment.typeCode CA or CE? -->
    <xsl:variable name="op_AcknowledgmentTypeCode">
        <xsl:choose>
            <xsl:when test="count(//svrl:failed-assert[not(@role) or @role='error'])=0 and count(//svrl:successful-report)=0">CA</xsl:when>
            <xsl:otherwise>CE</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <xsl:template match="/">
        <MCCI_IN000002 xmlns="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <!-- Transport Wrapper -->
            <id extension="{generate-id()}" root="2.16.528.1.1007.3.3.99999999.99"/>
            <creationTime value="{format-dateTime(current-dateTime(), '[Y][M,2][D,2][H,2][m,2][s,2]')}"/>
            <versionCode code="NICTIZEd2005-Okt"/>
            <interactionId extension="MCCI_IN000002" root="2.16.840.1.113883.1.6"/>
            <profileId root="2.16.840.1.113883.2.4.3.11.1" extension="810"/>
            <processingCode code="P"/>
            <processingModeCode code="T"/>
            <!-- accept acks dienen zelf nooit ge-acked te worden -->
            <acceptAckCode code="NE"/>
            <acknowledgement typeCode="{$op_AcknowledgmentTypeCode}">
                <xsl:call-template name="getErrors"/>
                <xsl:call-template name="getWarnings"/>
                <targetMessage>
                    <xsl:copy-of select="$ip_MessageId"/>
                </targetMessage>
            </acknowledgement>
            <receiver>
                <device>
                    <xsl:copy-of select="$ip_MessageSenderId"/>
                </device>
            </receiver>
            <sender>
                <device>
                    <xsl:copy-of select="$ip_MessageReceiverId"/>
                </device>
            </sender>
        </MCCI_IN000002>
    </xsl:template>
    
    <xsl:template name="getErrors">
        <xsl:for-each select="//svrl:failed-assert[not(@role) or @role='error']">
            <acknowledgementDetail typeCode="E">
                <!-- Zie codetabel in NL implementatiegids infrastructurele domeinen  -->
                <code code="VALIDATIEFOUT" codeSystem="2.16.840.1.113883.2.4.6.6.1.1000" displayName="Er is een validatiefout gevonden"/>
                <text><xsl:copy-of select="svrl:text/node()"/> (<xsl:value-of select="@test"/>)</text>
                <location>
                    <xsl:value-of select="@location"/>
                </location>
            </acknowledgementDetail>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="getWarnings">
        <xsl:for-each select="//svrl:failed-assert[not(@role='error')] | //svrl:successful-report">
            <acknowledgementDetail typeCode="W">
                <!-- Zie codetabel in NL implementatiegids infrastructurele domeinen  -->
                <code code="VALIDATIEWAARSCHWUING" codeSystem="2.16.840.1.113883.2.4.6.6.1.1000" displayName="Er is een validatiewaarschuwing gevonden"/>
                <text><xsl:value-of select="svrl:text"/> (<xsl:value-of select="@test"/>)</text>
                <location>
                    <xsl:value-of select="@location"/>
                </location>
            </acknowledgementDetail>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
