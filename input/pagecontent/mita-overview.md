# Medicaid Information Technology Architecture (MITA) 3.0 Overview

## Introduction to MITA

The Medicaid Information Technology Architecture (MITA) is a CMS initiative that establishes national guidelines for technologies and processes that improve the administration of the Medicaid program. MITA is intended to foster integrated business and IT transformation across the Medicaid enterprise to improve the administration of the Medicaid program.

MITA 3.0, released in 2012, represents a significant update to the framework and includes detailed business processes, technical capabilities, and information architecture guidelines that state Medicaid agencies can use to modernize their systems.

## MITA Business Architecture

The MITA Business Architecture defines business processes that are common across state Medicaid programs. These processes are organized into business areas, including:

- Provider Management
- Member Management
- Operations Management
- Program Management
- Care Management
- Performance Management
- Business Relationship Management
- Contractor Management
- Financial Management

### Provider Management Business Processes

This Implementation Guide focuses on the Provider Management business area, which includes the following key business processes relevant to provider directories:

- **PM01 - Provider Enrollment**: The process of collecting and validating provider information for participation in the Medicaid program.
- **PM02 - Provider Information Management**: The process of maintaining accurate provider information, including demographics, service locations, and credentials.
- **PM03 - Provider Support**: The process of responding to provider inquiries and providing information about the Medicaid program.
- **PM08 - Provider Network Management**: The process of developing and maintaining the provider network to ensure adequate access to care.

## MITA Information Architecture

The MITA Information Architecture defines the data needed to support the business processes. For provider directories, key data concepts include:

- Provider demographics
- Provider qualifications and credentials
- Provider locations and service offerings
- Provider network affiliations
- Provider accessibility information
- Electronic service endpoints

## MITA Technical Architecture

The MITA Technical Architecture defines the technical capabilities needed to support the business processes and information architecture. For provider directories, key technical capabilities include:

- **Business Rules Management**: The ability to define and enforce business rules related to provider information.
- **Data Management**: The ability to store, retrieve, and manage provider data.
- **Service-Oriented Architecture**: The ability to expose provider directory functionality as services.
- **Interoperability**: The ability to exchange provider information with other systems.

## MITA Maturity Model

The MITA Maturity Model defines five levels of maturity for Medicaid systems:

1. **Level 1 - As-Is**: Paper-based, siloed systems with minimal automation.
2. **Level 2 - Transition**: Increased automation and standardization within the agency.
3. **Level 3 - To-Be**: Adoption of MITA standards and increased interoperability.
4. **Level 4 - Enhanced**: Advanced interoperability and adoption of industry standards.
5. **Level 5 - Optimized**: Seamless interoperability and continuous improvement.

This Implementation Guide supports states in achieving Level 3 and above for provider directory capabilities by adopting FHIR standards and aligning with the CMS Interoperability Rule.

## Alignment with MITA 3.0

This Implementation Guide aligns with MITA 3.0 in the following ways:

### Business Process Alignment

The profiles and capabilities defined in this IG support the following MITA business processes:

| MITA Business Process | Supported Capabilities |
|------------------------|------------------------|
| PM01 - Provider Enrollment | Capture and validate provider information |
| PM02 - Provider Information Management | Maintain accurate provider information |
| PM08 - Provider Network Management | Manage provider networks and affiliations |

### Information Architecture Alignment

The FHIR resources and profiles defined in this IG align with the MITA information architecture by providing standardized representations of:

- Provider demographics (Practitioner, Organization)
- Provider qualifications (PractitionerRole)
- Provider locations (Location)
- Network affiliations (Network, OrganizationAffiliation)
- Electronic endpoints (Endpoint)

#### Leveraging Industry Standard Code Systems

This IG enhances MITA alignment by leveraging industry standard code systems:

- **NUCC Provider Taxonomy**: Incorporated into MedicaidProviderTypeVS for standardized provider classification
- **CMS Place of Service Codes**: Incorporated into MedicaidFacilityTypeVS for standardized facility classification
- **HCPCS**: Referenced for service categories to align with standard billing practices

#### Concept Maps for Interoperability

To facilitate interoperability between Medicaid-specific codes and industry standards, this IG provides concept maps:

- **MedicaidToNUCCProviderTypeMap**: Enables translation between Medicaid provider types and NUCC taxonomy codes
- **MedicaidToCMSFacilityTypeMap**: Enables translation between Medicaid facility types and CMS Place of Service codes

### Technical Architecture Alignment

This IG supports the MITA technical architecture by:

- Defining RESTful APIs for provider directory information
- Supporting standards-based interoperability
- Enabling service-oriented architecture through FHIR resources
- Supporting business rules through profile constraints
- Providing enhanced search capabilities through standardized search parameters
- Implementing version management for code systems to support evolution over time

## MITA Seven Standards and Conditions

CMS requires that Medicaid IT systems meet the Seven Standards and Conditions for enhanced federal funding. This IG supports compliance with these conditions, particularly:

1. **Modularity**: By defining discrete FHIR resources that can be implemented independently
2. **MITA Alignment**: By supporting MITA business processes and information architecture
3. **Industry Standards**: By adopting FHIR and aligning with the Da Vinci Plan-Net IG
4. **Leverage**: By building on existing standards and implementations
5. **Business Results**: By enabling improved provider directory accuracy and accessibility
6. **Interoperability**: By defining standard APIs for provider directory information
7. **Flexibility**: By supporting various implementation approaches while maintaining standards compliance
