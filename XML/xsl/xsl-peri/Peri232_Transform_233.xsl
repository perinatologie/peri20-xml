<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes" exclude-result-prefixes="#all"/>
    <xsl:strip-space elements="*"/>
    <!-- Transforms peri 2.3.2 message into peri 2.3.3 -->
    <!-- set a different schematron -->
    <xsl:template match="/processing-instruction('xml-model')">
        <xsl:processing-instruction name="xml-model">href="file:/C:/SVN/AORTA/trunk/Zorgtoepassing/PerinataleZorg/DECOR/peri20-runtime-develop/peri20-ksgz-alg-23.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
    </xsl:template>
    <!-- Update the main template id to the 2.3.3 version -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.74']/@root">
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.6.10.90.76'"/>
    </xsl:template>
    <!-- Issue 1019 - Bij obstetrische anamnese / diagnose / afwijkende groei foetus stond de contextConductionInd ten onrechte op 'true'. Dit is hersteld in Kernset 2.3 in het nieuwe template 901095: contextConductionInd moet nu false staan -->
    <xsl:template match="hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900966']/hl7:component/hl7:organizer[hl7:code/@code = '439401001']/hl7:component[hl7:observation/hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900976'][@contextConductionInd = 'true']/@contextConductionInd">
        <xsl:attribute name="contextConductionInd">false</xsl:attribute>
    </xsl:template>
    <!-- Issue 1040 - Removed two options in valueset for reason primary Sectio.  -->
    <xsl:template match="hl7:outboundRelationship/hl7:observation[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900279'][hl7:value[@code = '237320005' or @code = '249166003']]">
        <!-- Issue 1040 - an indication for a secundary sectio was chosen, let's move this to the appropriate template -->
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:element name="templateId">
                <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901090</xsl:attribute>
            </xsl:element>
            <xsl:element name="code">
                <xsl:apply-templates select="./hl7:code/@*"/>
                <xsl:attribute name="code">SectioCaeInd</xsl:attribute>
                <xsl:attribute name="codeSystem">2.16.840.1.113883.2.4.3.22.1.1</xsl:attribute>
            </xsl:element>
            <xsl:apply-templates select="./hl7:value"/>
        </xsl:copy>
    </xsl:template>
    <!-- Issue 1040 - Update templateId 900277 -> 901106  -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900277']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901106</xsl:attribute>
    </xsl:template>
    <!-- Issue 1040 - Update templateId 900279 -> 901105  -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900279']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901105</xsl:attribute>
    </xsl:template>
    <!-- Issue 1044 - wrong template for infectie at (reden verwijzing) obstetrische anamnese -->
    <!-- Issue 1044 - template nr update at verwijsdetails 901046 -> 901098 -->
    <xsl:template match="//hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901046']/@root">
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.6.10.90.901098'"/>
    </xsl:template>
    <!-- Issue 1044 - template nr add at verwijsdetails/reden verwijzing/obstetrische anamnese 901096 -->
    <!-- Issue 1044 - template nr add at verwijsdetails/reden verwijzing/zwangerschap 901100 -->
    <!-- Issue 1044 - this is a challenge, since in the 2.3.2 version there is no real distinction between current pregnancy and obstetric history, 
        due to issue 1045 -->
    <xsl:template match="hl7:outboundRelationship[hl7:organizer/hl7:code/@code = '248983002'][ancestor::*[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']]">
        <!-- Issue 1044 - if there is a reason for navelstreng prolaps/liggingsafwijking/iuvd then we know it is current pregnancy -->
        <!-- Issue 1044 - if there is a reason for fluxus postpartum then we know it is obstetric history -->
        <!-- Issue 1044 - if there are only other reasons there is no way to know, since these reasons are valid in both current pregnancy and obstetric history -->
        <xsl:variable name="current_outbound_rel" select="."/>
        <xsl:choose>
            <xsl:when test="$current_outbound_rel//hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901054'">
                <!-- there is a reason for fluxus postpartum: this must be obstetric history -->
                <xsl:copy>
                    <xsl:apply-templates select="@*"/>
                    <xsl:element name="organizer">
                        <xsl:apply-templates select="$current_outbound_rel/hl7:organizer/@*"/>
                        <xsl:element name="templateId">
                            <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901096</xsl:attribute>
                        </xsl:element>
                        <xsl:apply-templates select="$current_outbound_rel/hl7:organizer/node()"/>
                    </xsl:element>
                </xsl:copy>
            </xsl:when>
            <xsl:when test="
                    $current_outbound_rel//hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052'
                    or @root = '2.16.840.1.113883.2.4.6.10.90.901053' or @root = '2.16.840.1.113883.2.4.6.10.90.900918']">
                <!-- Issue 1044 - there is a reason for navelstreng prolaps/liggingsafwijking/iuvd: this must be current pregnancy -->
                <xsl:copy>
                    <xsl:apply-templates select="@*"/>
                    <xsl:element name="organizer">
                        <xsl:apply-templates select="$current_outbound_rel/hl7:organizer/@*"/>
                        <xsl:element name="templateId">
                            <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901100</xsl:attribute>
                        </xsl:element>
                        <!-- issue 1045, fix the SNOMED code for reden verwijzing/zwangerschap -->
                        <xsl:element name="code">
                            <xsl:apply-templates select="$current_outbound_rel/hl7:organizer/hl7:code/@*"/>
                            <xsl:attribute name="code">364320009</xsl:attribute>
                            <xsl:attribute name="displayName">Zwangerschap</xsl:attribute>
                        </xsl:element>
                        <xsl:apply-templates select="$current_outbound_rel/hl7:organizer/node()[not(local-name() = 'code')]"/>
                    </xsl:element>
                </xsl:copy>
            </xsl:when>
            <xsl:otherwise>
                <!-- Issue 1044 - there is no way of knowing whether this outboundRelationship contains reasons for referral in obstetric history or current pregnancy  -->
                <!-- Issue 1044 - we'll copy the outbound relationship in comments with the remark to look at this in order to fix this properly -->
                <xsl:comment>TODO: it cannot be automatically determined whether this outboundRelationship contains reasons for referral in obstetric history or current pregnancy</xsl:comment>
                <xsl:comment>Please fix this properly</xsl:comment>
                <xsl:call-template name="copyElementInComment">
                    <xsl:with-param name="element" select="$current_outbound_rel"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!-- Issue 1044 - template nr update at obstetrische anamnese 900966 -> 901095 -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900966']/@root">
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.6.10.90.901095'"/>
    </xsl:template>
    <!-- Issue 1044 - template nr update at (reden verwijzing)/obstetrische anamnese/infectie 900950 -> 900975 -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900950'][ancestor::hl7:organizer[hl7:code/@code = '248983002']]/@root">
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.6.10.90.900975'"/>
    </xsl:template>
    <!-- Issue 1044 - value conversion because other valueset in template 900950, which is not compatible with the appropriate valueset in 900975 -->
    <xsl:template match="*[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900950'][ancestor::hl7:organizer[hl7:code/@code = '248983002']]/hl7:value">
        <!-- Please note, there was a wrong valueset in the 2.3.2 template. This cannot be properly transformed. 
             Check your source code so that the appropriate valueset is supported from your source system. 
             This is a temporary technical fix to put it in OTH, which is not a proper solution -->
        <xsl:copy>
            <xsl:attribute name="xsi:type" select="@xsi:type"/>
            <xsl:attribute name="nullFlavor">OTH</xsl:attribute>
            <xsl:element name="hl7:originalText">Transformed from 2.3.2 xml message (which has wrong valueset): <xsl:value-of select="@displayName"/>. (code: <xsl:value-of select="@code"/>. codeSystemm: <xsl:value-of select="@codeSystem"/>).</xsl:element>
        </xsl:copy>
    </xsl:template>
    <!-- issue 1047 - new template 901046 -> 901099, template id addition -->
    <xsl:template match="*[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']//hl7:organizer[hl7:code/@code = '439401001']">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:element name="hl7:templateId">
                <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901099</xsl:attribute>
            </xsl:element>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- issue 1047, remove obsolete organizer/id -->
    <xsl:template match="*[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']//hl7:organizer[hl7:code/@code = '439401001']/hl7:id"/>
    <!-- issue 1055 - Due to issue 908 Bijstimulatie is now a child specific item in dataset 2.3. So also in Kernset 2.3 -->
    <!-- issue 1055 - New template id for Bevalling template -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900988']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901101</xsl:attribute>
    </xsl:template>
    <!-- issue 1055 - New template id for Baring template -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900989']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901102</xsl:attribute>
    </xsl:template>
    <!-- issue 1055 - Remove non-child specific Bijstimulatie -->
    <xsl:template match="hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900988']/hl7:component[hl7:observation/hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900217']">
        <!-- do nothing, this component should no longer be here -->
    </xsl:template>
    <!-- issue 1055 - if there is only one child in this delivery, than the non-child specific Bijstimulatie can be moved to that child -->
    <!-- issue 1055 - if there is more than one child, we cannot do anything with bijstimulatie, let's put it in comments -->
    <xsl:template match="hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900988']/hl7:component/hl7:procedure[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900989']">
        <xsl:variable name="countChildren" select="count(//hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900988']/hl7:component[hl7:procedure/hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900989'])"/>
        <xsl:variable name="Bijstimulatie_observation" select="//hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900988']/hl7:component/hl7:observation[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900217']"/>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:if test="$Bijstimulatie_observation instance of element()">
                <xsl:choose>
                    <xsl:when test="$countChildren = 1">
                        <!-- issue 1055 - copy the bijstimulatie -->
                        <xsl:comment>Added Bijstimulatie 2.3.2 version to child-specific item, since there is only one child</xsl:comment>
                        <xsl:element name="outboundRelationship">
                            <xsl:attribute name="typeCode">COMP</xsl:attribute>
                            <xsl:copy-of select="$Bijstimulatie_observation"/>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- issue 1055 - copy the bijstimulatie in comments-->
                        <xsl:comment>Cannot add Bijstimulatie 2.3.2 version to child-specific item, since there is more than one child</xsl:comment>
                        <xsl:call-template name="copyElementInComment">
                            <xsl:with-param name="element" select="$Bijstimulatie_observation"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:copy>
    </xsl:template>
    <!-- issue 1057 SNOMED code improved for diagnosis current delivery-->
    <xsl:template match="*[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']//hl7:organizer/hl7:code[@code = '439401001']">
        <xsl:copy>
            <xsl:attribute name="code">236973005</xsl:attribute>
            <xsl:attribute name="displayName">Bevalling</xsl:attribute>
            <xsl:attribute name="codeSystem" select="@codeSystem"/>
        </xsl:copy>
    </xsl:template>
    <!-- issue 1058 - replace template id 900861 with 901107 -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900861']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901107</xsl:attribute>
    </xsl:template>
    <!-- issue 1058 - replace template id 900980 with 901108 -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900980']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901108</xsl:attribute>
    </xsl:template>
    <!-- issue 1058 - map the valueset to the new one -->
    <xsl:template match="hl7:observation[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900861']/hl7:value">
        <xsl:copy>
            <xsl:apply-templates select="./@*"/>
            <xsl:choose>
                <xsl:when test="./@code = '48782003'">
                    <xsl:attribute name="code">177184002</xsl:attribute>
                </xsl:when>
                <xsl:when test="./@code = '8561000146109'">
                    <xsl:attribute name="code">3311000146109</xsl:attribute>
                </xsl:when>
                <xsl:when test="./@code = '200146002'">
                    <xsl:attribute name="code">11466000</xsl:attribute>
                </xsl:when>
                <xsl:when test="./@code = '200148001'">
                    <xsl:attribute name="code">177141003</xsl:attribute>
                </xsl:when>
                <xsl:when test="./@code = '200149009'">
                    <xsl:attribute name="code">274130007</xsl:attribute>
                </xsl:when>
                <xsl:when test="./@code = '39406005'">
                    <xsl:attribute name="code">10</xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.2.4.4.14</xsl:attribute>
                </xsl:when>
                <xsl:when test="./@nullFlavor = 'UNK'">
                    <xsl:attribute name="nullFlavor">NI</xsl:attribute>
                </xsl:when>
            </xsl:choose>
        </xsl:copy>
        <xsl:comment>Original value before conversion in the comment below.</xsl:comment>
        <xsl:call-template name="copyElementInComment">
            <xsl:with-param name="element" select="."/>
        </xsl:call-template>
    </xsl:template>
    <!-- issue 1052 - diagnose current pregnancy, method iuvd -->
    <!-- issue 1052 - template nr update at diagnose current pregnancy/iuvd 900918 -> 901091 -->
    <!-- issue 1052 - please note: cannot make up the method for iuvd, so this needs to be added from the source system -->
    <xsl:template match="hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918'][ancestor::hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901004']]/@root">
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.6.10.90.901091'"/>
    </xsl:template>
    <!-- issue 1053 - Wijze waarop baring begon and interventie begin baring are now separated -->
    <xsl:template match="hl7:component[hl7:observation/hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900715']">
        <xsl:variable name="interventie_procedure" select=".//hl7:procedure[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900726']"/>
        <xsl:if test="$interventie_procedure instance of element()">
            <!-- issue 1053 - Let's output the intervention first, just like the dataset -->
            <xsl:comment>Interventie begin baring (moved from a component within wijze waarop baring begon to it's own component, due to issue 1053)</xsl:comment>
            <xsl:element name="component">
                <xsl:attribute name="typeCode">COMP</xsl:attribute>
                <xsl:attribute name="contextConductionInd">true</xsl:attribute>
                <xsl:apply-templates select="$interventie_procedure"/>
            </xsl:element>
        </xsl:if>
        <!-- issue 1053 - now proceed with copying the wijze waarop baring begon -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="hl7:component/hl7:observation[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900715']/hl7:outboundRelationship">
        <!-- issue 1053 - Do not copy the outboundRelationship, this is the indicatie that has now been moved into a component in the previous xslt template -->
    </xsl:template>
    <!-- issue 1053 update templateId -->
    <xsl:template match="hl7:component/hl7:observation/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900715']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901103</xsl:attribute>
    </xsl:template>
    <!-- issue 1056 - diagnoses delivery for iuvd was missing -->
    <!-- issue 1056 - if there is a reason for referral for iuvd during delivery than add it to the diagnosis as well -->
    <xsl:template match="hl7:CareProvisionEvent[hl7:pertinentInformation3/hl7:act[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']//hl7:organizer[hl7:code/@code = '439401001']//hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900918']//hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901014']">
        <!-- add the diagnosis for iuvd as the last component-->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:call-template name="DiagnosisDeliveryIUVD"/>
        </xsl:copy>
    </xsl:template>
    <!-- issue 1056 - still do that if there is no section for diagnoses delivery -->
    <xsl:template match="hl7:CareProvisionEvent[hl7:pertinentInformation3/hl7:act[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']//hl7:organizer[hl7:code/@code = '439401001']//hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900918']//hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900988'][not(hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901014'])]">
        <!-- add the diagnose delivery section as the last component-->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:call-template name="DianosisDeliverySectionWithIUVD"/>
        </xsl:copy>
    </xsl:template>
    <!-- issue 1056 - still do that if there is no section for delivery -->
    <xsl:template match="hl7:CareProvisionEvent[hl7:pertinentInformation3/hl7:act[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.901046']//hl7:organizer[hl7:code/@code = '439401001']//hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900918'][//not(hl7:organizer[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.90.900988'])]">
        <!-- add the delivery section as the last pertinentInformation3-->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <pertinentInformation3 typeCode="PERT" contextConductionInd="true">
                <organizer classCode="CONTAINER" moodCode="EVN">
                    <templateId root="2.16.840.1.113883.2.4.6.10.90.900988"/>
                    <code code="236973005" codeSystem="2.16.840.1.113883.6.96" displayName="Delivery procedure"/>
                    <xsl:call-template name="DianosisDeliverySectionWithIUVD"/>
                </organizer>
            </pertinentInformation3>
        </xsl:copy>
    </xsl:template>    
    <!-- issue 1061 - update templateId 901004 -> 901092 -->
    <xsl:template match="hl7:pertinentInformation3/hl7:organizer/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901004']/@root">
        <xsl:attribute name="root">2.16.840.1.113883.2.4.6.10.90.901092</xsl:attribute>
    </xsl:template>

    <xsl:template name="DianosisDeliverySectionWithIUVD">
        <!-- TODO pass and use the actual reason for referral -->
        <xsl:param name="RedenVerwijzingIUVD"/>
        <xsl:choose>
            <xsl:when test="$RedenVerwijzingIUVD instance of element()">
                <!-- TODO -->
                <xsl:comment>TODO use the actual reason for referral as passed in this template DianosisDeliverySectionWithIUVD</xsl:comment>
            </xsl:when>
            <xsl:otherwise>
                <component typeCode="COMP" contextConductionInd="true">
                    <organizer classCode="CONTAINER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901014"/>
                        <id nullFlavor="NI"/>
                        <code code="439401001" codeSystem="2.16.840.1.113883.6.96" displayName="Diagnosis"/>
                        <xsl:call-template name="DiagnosisDeliveryIUVD"/>
                    </organizer>
                </component>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="DiagnosisDeliveryIUVD">
        <xsl:comment>Added IUVD from 'Reden verwijzing'</xsl:comment>
        <component typeCode="COMP" contextConductionInd="true">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.6.10.90.901091"/>
                <code code="59291004" codeSystem="2.16.840.1.113883.6.96" displayName="Intra-uteriene vruchtdood"/>
                <uncertaintyCode code="U" codeSystem="2.16.840.1.113883.5.1053"/>
                <value xsi:type="BL" value="true"/>
            </observation>
        </component>
    </xsl:template>

    <!-- copy an element with all of it's contents in comments -->
    <xsl:template name="copyElementInComment">
        <xsl:param name="element"/>
        <xsl:text disable-output-escaping="yes">
                       &lt;!--</xsl:text>
        <xsl:for-each select="$element">
            <xsl:call-template name="copyWithoutComments"/>
        </xsl:for-each>
        <xsl:text disable-output-escaping="yes">--&gt;
</xsl:text>
    </xsl:template>
    <!-- copy without comments -->
    <xsl:template name="copyWithoutComments">
        <xsl:copy>
            <xsl:for-each select="@* | *">
                <xsl:call-template name="copyWithoutComments"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>
    <!-- Default copy xsl template -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
