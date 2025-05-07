### Overview

The Centers for Medicare & Medicaid Services (CMS) Interoperability and Patient Access final rule (CMS-9115-F) was published in the Federal Register on May 1, 2020. This rule implements key provisions of the 21st Century Cures Act and supports the MyHealthEData initiative to improve patient access to their health information.

The rule requires certain payers, including Medicaid managed care plans, to implement and maintain standards-based APIs that allow patients to easily access their claims and encounter information, including provider directory information, through third-party applications of their choice.

### Provider Directory API Requirements

The CMS Interoperability Rule includes specific requirements for provider directory APIs:

#### Covered Entities

The following entities are required to implement provider directory APIs:

- Medicaid Fee-for-Service (FFS) programs
- Medicaid managed care plans
- Children's Health Insurance Program (CHIP) FFS programs
- CHIP managed care entities
- Qualified Health Plan (QHP) issuers on the Federally-facilitated Exchanges (FFEs)

#### Required Information

The provider directory API must make the following information publicly available:

- Provider names
- Addresses
- Phone numbers
- Specialties
- Network status (in-network or not)

#### Technical Standards

The rule requires the use of the following standards:

- Health Level 7 (HL7®) Fast Healthcare Interoperability Resources (FHIR®) Release 4.0.1
- Implementation specifications, including the US Core Implementation Guide (IG) and the CARIN Alliance's Consumer Directed Payer Data Exchange (CARIN IG for Blue Button®)

#### Timeframes for Updates

Provider directory information must be updated:

- Within 30 calendar days of receiving updated provider directory information
- Must include the date of the last update

#### Public Access

The provider directory API must:

- Be accessible to the public without requiring authentication
- Be accessible via a publicly accessible endpoint
- Be documented in a publicly accessible manner

### Alignment with This Implementation Guide

This Implementation Guide supports compliance with the CMS Interoperability Rule in the following ways:

#### FHIR-Based API

This IG defines a FHIR-based API for provider directory information, using FHIR R4 (4.0.1) as required by the CMS rule.

#### Required Information

The profiles defined in this IG include all the required provider directory information specified in the CMS rule:

| CMS Requirement | FHIR Resource/Profile |
|-----------------|------------------------|
| Provider names | Practitioner, Organization |
| Addresses | Practitioner.address, Organization.address, Location.address |
| Phone numbers | Practitioner.telecom, Organization.telecom, Location.telecom |
| Specialties | PractitionerRole.specialty, OrganizationRole.specialty |
| Network status | Network, OrganizationAffiliation |

#### Additional Capabilities

This IG goes beyond the minimum requirements of the CMS rule to provide additional capabilities that support more comprehensive provider directory functionality:

- Detailed provider qualifications and credentials
- Service offerings and accessibility information
- Electronic endpoints for electronic service delivery
- Relationships between providers, organizations, and networks

#### Implementation Guidance

This IG provides implementation guidance specific to Medicaid provider directories, including:

- Search parameters for finding providers based on various criteria
- Conformance requirements for provider directory APIs
- Examples demonstrating the use of the profiles in real-world scenarios

### Compliance Timeline

The CMS Interoperability Rule established the following compliance timeline for provider directory APIs:

- **Medicaid and CHIP FFS programs**: By January 1, 2023
- **Medicaid managed care plans and CHIP managed care entities**: By January 1, 2021
- **QHP issuers on the FFEs**: By January 1, 2021

Implementers should consult the latest CMS guidance for any updates to these timelines.

### Additional Resources

For more information about the CMS Interoperability and Patient Access API Rule, see:

- [CMS Interoperability and Patient Access Final Rule](https://www.cms.gov/Regulations-and-Guidance/Guidance/Interoperability/index)
- [Fact Sheet: Interoperability and Patient Access Final Rule (CMS-9115-F)](https://www.cms.gov/newsroom/fact-sheets/interoperability-and-patient-access-fact-sheet)
- [Office of the National Coordinator for Health IT (ONC) Cures Act Final Rule](https://www.healthit.gov/curesrule/)
