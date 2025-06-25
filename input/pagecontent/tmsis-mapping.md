### TMSIS to FHIR Mapping

#### Purpose

This page provides a mapping between data elements in the Transformed Medicaid Statistical Information System (TMSIS) and their corresponding elements in the FHIR profiles defined in this Implementation Guide. The purpose of this mapping is to:

1. **Facilitate Data Integration**: Enable seamless integration between existing TMSIS data and FHIR-based systems by providing a clear crosswalk between data elements.

2. **Support Interoperability**: Enhance interoperability between Medicaid systems and other healthcare systems by mapping Medicaid-specific data to standardized FHIR resources.

3. **Guide Implementation**: Assist implementers in understanding how to represent TMSIS data using FHIR resources and extensions, ensuring consistent implementation across different systems.

4. **Enable Data Exchange**: Support bidirectional data exchange between TMSIS and FHIR-based systems, allowing data to flow between these systems while preserving semantic meaning.

5. **Promote Standards Adoption**: Encourage the adoption of FHIR standards within the Medicaid ecosystem by providing a clear path from existing data structures to FHIR.

#### TMSIS to FHIR Profile Mapping Table

##### Provider Data Elements

| TMSIS Data Element | TMSIS Location | FHIR Profile | FHIR Element |
|-------------------|----------------|--------------|--------------|
| Provider ID | PRV_ID in Provider file (PRV) | MedicaidPractitioner/MedicaidOrganization | extension[medicaidProviderIdentifier].valueIdentifier |
| Provider Type | PRV_TYPE_CD in Provider file (PRV) | MedicaidPractitioner | extension[medicaidProviderType].valueCodeableConcept |
| Provider Specialty | SPCLTY_CD in Provider file (PRV) | MedicaidPractitionerRole | specialty |
| Provider Taxonomy | TXNMY_CD in Provider file (PRV) | MedicaidPractitionerRole | specialty (mapped via MedicaidToNUCCProviderTypeMap) |
| Provider Name (Individual) | PRV_NAME in Provider file (PRV) | MedicaidPractitioner | name |
| Provider Name (Organization) | PRV_ORG_NAME in Provider file (PRV) | MedicaidOrganization | name |
| Provider Enrollment Date | ENRLMT_DT in Provider file (PRV) | MedicaidPractitioner/MedicaidOrganization | extension[medicaidEnrollmentDate].valueDate |
| Provider Enrollment Status | ENRLMT_STUS_CD in Provider file (PRV) | MedicaidPractitioner/MedicaidOrganization | extension[medicaidEnrollmentStatus].valueCodeableConcept |
| Provider License Number | LCNS_NUM in Provider License file (PRV_LCNS) | MedicaidPractitioner | qualification.identifier |
| License State | LCNS_STATE_CD in Provider License file (PRV_LCNS) | MedicaidPractitioner | qualification.issuer |
| License Effective Date | LCNS_EFCTV_DT in Provider License file (PRV_LCNS) | MedicaidPractitioner | qualification.period.start |
| License End Date | LCNS_END_DT in Provider License file (PRV_LCNS) | MedicaidPractitioner | qualification.period.end |

##### Location Data Elements

| TMSIS Data Element | TMSIS Location | FHIR Profile | FHIR Element |
|-------------------|----------------|--------------|--------------|
| Service Location ID | SVC_LOC_ID in Provider Location file (PRV_LOC) | MedicaidLocation | identifier |
| Address Line 1 | ADR_LINE_1_TXT in Provider Location file (PRV_LOC) | MedicaidLocation | address.line[0] |
| Address Line 2 | ADR_LINE_2_TXT in Provider Location file (PRV_LOC) | MedicaidLocation | address.line[1] |
| City | CITY_NAME in Provider Location file (PRV_LOC) | MedicaidLocation | address.city |
| State | STATE_CD in Provider Location file (PRV_LOC) | MedicaidLocation | address.state |
| ZIP Code | ZIP_CD in Provider Location file (PRV_LOC) | MedicaidLocation | address.postalCode |
| Phone Number | PHN_NUM in Provider Location file (PRV_LOC) | MedicaidLocation | telecom (with system=phone) |
| Facility Type | FCLTY_TYPE_CD in Provider Location file (PRV_LOC) | MedicaidOrganization | type (from MedicaidFacilityTypeVS) |
| Accessibility Indicator | ACCESSIBLE_IND in Provider Location file (PRV_LOC) | MedicaidLocation | extension related to accessibility |

##### Affiliation/Network Data Elements

| TMSIS Data Element | TMSIS Location | FHIR Profile | FHIR Element |
|-------------------|----------------|--------------|--------------|
| Managed Care Plan ID | MC_PLAN_ID in Managed Care Plan file (MC_PLAN) | MedicaidInsurancePlan | identifier |
| Provider Network ID | PRV_NTWRK_ID in Provider Network file (PRV_NTWRK) | MedicaidNetwork | identifier |
| Network Affiliation Start Date | NTWRK_STRT_DT in Provider Network Affiliation file (PRV_NTWRK_AFF) | MedicaidOrganizationAffiliation | period.start |
| Network Affiliation End Date | NTWRK_END_DT in Provider Network Affiliation file (PRV_NTWRK_AFF) | MedicaidOrganizationAffiliation | period.end |
| Network Type | NTWRK_TYPE_CD in Provider Network file (PRV_NTWRK) | MedicaidNetwork | extension[medicaidNetworkType].valueCodeableConcept |
| Network Adequacy Status | NTWRK_ADQCY_CD in Provider Network file (PRV_NTWRK) | MedicaidNetwork | extension[medicaidNetworkAdequacy].extension[adequacyStatus].valueCodeableConcept |

##### Service Data Elements

| TMSIS Data Element | TMSIS Location | FHIR Profile | FHIR Element |
|-------------------|----------------|--------------|--------------|
| Service Category | SRVC_CTGRY_CD in Provider Service file (PRV_SRVC) | MedicaidHealthcareService | category |
| Service Type | SRVC_TYPE_CD in Provider Service file (PRV_SRVC) | MedicaidHealthcareService | type |
| Service Availability | AVLBL_SRVC_CD in Provider Service file (PRV_SRVC) | MedicaidHealthcareService | availabilityExceptions |
| Service Start Date | SRVC_STRT_DT in Provider Service file (PRV_SRVC) | MedicaidHealthcareService | availableTime.availableStartTime |
| Service End Date | SRVC_END_DT in Provider Service file (PRV_SRVC) | MedicaidHealthcareService | availableTime.availableEndTime |

##### Ownership Data Elements

| TMSIS Data Element | TMSIS Location | FHIR Profile | FHIR Element |
|-------------------|----------------|--------------|--------------|
| Owner Name | OWNR_NAME in Provider Ownership file (PRV_OWNRSHP) | MedicaidOrganization | extension[medicaidOwnershipDisclosure].extension[owner].extension[ownerName].valueString |
| Owner Type | OWNR_TYPE_CD in Provider Ownership file (PRV_OWNRSHP) | MedicaidOrganization | extension[medicaidOwnershipDisclosure].extension[owner].extension[ownerType].valueCodeableConcept |
| Ownership Percentage | OWNRSHP_PRCNT in Provider Ownership file (PRV_OWNRSHP) | MedicaidOrganization | extension[medicaidOwnershipDisclosure].extension[owner].extension[ownershipPercentage].valueDecimal |
| Ownership Relationship | OWNRSHP_REL_CD in Provider Ownership file (PRV_OWNRSHP) | MedicaidOrganization | extension[medicaidOwnershipDisclosure].extension[owner].extension[relationshipType].valueCodeableConcept |
| Ownership Disclosure Date | DSCLSR_DT in Provider Ownership file (PRV_OWNRSHP) | MedicaidOrganization | extension[medicaidOwnershipDisclosure].extension[disclosureDate].valueDate |

#### Implementation Considerations

When implementing this mapping, consider the following:

1. **TMSIS Structure**: TMSIS organizes data into different files (PRV for Provider, PRV_LOC for Provider Location, etc.). Each file contains specific data elements related to that aspect of provider information.

2. **FHIR Extensions**: Many Medicaid-specific data elements are implemented as extensions in the FHIR profiles, such as medicaidProviderIdentifier, medicaidEnrollmentStatus, and medicaidOwnershipDisclosure.

3. **Code System Mappings**: The implementation guide includes concept maps (MedicaidToCMSFacilityTypeMap and MedicaidToNUCCProviderTypeMap) that provide mappings between Medicaid-specific codes and industry standard codes.

4. **Complex Extensions**: Some TMSIS data elements map to nested extensions in FHIR, particularly for complex structures like ownership information.

5. **Terminology Alignment**: The value sets used in the FHIR profiles (e.g., MedicaidProviderTypeVS, MedicaidFacilityTypeVS) should be aligned with the code systems used in TMSIS to ensure semantic interoperability.

#### Benefits of Using This Mapping

1. **Standardized Data Exchange**: Enables standardized exchange of provider directory information between Medicaid systems and other healthcare systems.

2. **Reduced Implementation Effort**: Provides a clear roadmap for implementing FHIR-based provider directories using existing TMSIS data.

3. **Improved Data Quality**: Supports consistent representation of provider information across different systems, reducing data inconsistencies.

4. **Enhanced Interoperability**: Facilitates interoperability between Medicaid systems and other healthcare systems by using standard FHIR resources and extensions.

5. **Alignment with Federal Requirements**: Supports compliance with federal interoperability requirements, including the CMS Interoperability and Patient Access API Rule.
