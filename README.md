# Medicaid Plan-Net Implementation Guide

[![FHIR Version](https://img.shields.io/badge/FHIR-R4%20(4.0.1)-blue.svg)](http://hl7.org/fhir/R4/)
[![IG Status](https://img.shields.io/badge/Status-Draft-yellow.svg)](http://hl7.org/fhir/us/medicaid-plannet/)
[![Build Status](https://img.shields.io/badge/Build-CI%20Build-green.svg)](https://github.com/your-org/medicaid-plannet-fsh)

## Overview

The **Medicaid Plan-Net Implementation Guide** defines a FHIR-based approach for exchanging Medicaid provider directory information in accordance with the Medicaid Information Technology Architecture (MITA) specification. This Implementation Guide builds upon the [Da Vinci Plan-Net Implementation Guide](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/) and the [FAST National Directory of Healthcare Providers & Services (NDH) Implementation Guide](http://hl7.org/fhir/us/ndh/STU1/), ensuring compliance with the [CMS Interoperability and Patient Access API Rule](https://www.cms.gov/Regulations-and-Guidance/Guidance/Interoperability/index).

The goal of this IG is to standardize how Medicaid provider directory information is exchanged **between State Medicaid Agency systems**, ensuring that Medicaid stakeholders have access to accurate and up-to-date information about Medicaid providers.

**Patients** should access the provider directory through the [Da Vinci Plan-Net Implementation Guide](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/), as recommended by the [CMS Interoperability and Patient Access API Rule](https://www.cms.gov/Regulations-and-Guidance/Guidance/Interoperability/index).  This IG is based heavily on the Da Vinci Plan-Net Implementation Guide, but adds other key information that is important to State Medicaid Agencies.

## Purpose

This Implementation Guide addresses the critical need for standardized provider directory data exchange in the Medicaid ecosystem by:

- **Defining FHIR profiles for key provider directory resources** - Creating standardized data structures that specify how provider information should be represented in FHIR while maintaining compatibility with broader healthcare interoperability standards
- **Aligning with MITA business processes** - Supporting business processes defined in the Medicaid Information Technology Architecture framework and enabling states to achieve higher MITA maturity levels
- **Leveraging industry standard code systems** - Incorporating established healthcare terminology standards (NUCC, CMS Place of Service, HCPCS) alongside Medicaid-specific codes
- **Providing concept maps between standards** - Creating explicit mappings between Medicaid-specific terminology and industry-standard codes
- **Supporting CMS Interoperability Rule compliance** - Implementing technical requirements for making provider directory information available through standardized APIs
- **Implementing comprehensive version management** - Establishing mechanisms to track and manage changes to terminology over time
- **Providing detailed implementation guidance** - Offering technical documentation and best practices for Medicaid agencies and their technology partners

## Key Features

### FHIR Profiles

| Profile | Description |
|---------|-------------|
| **MedicaidOrganization** | Healthcare organizations participating in Medicaid programs |
| **MedicaidPractitioner** | Individual healthcare providers enrolled in Medicaid |
| **MedicaidPractitionerRole** | Roles and relationships of practitioners within organizations |
| **MedicaidLocation** | Physical locations where Medicaid services are provided |
| **MedicaidHealthcareService** | Specific healthcare services offered by Medicaid providers |
| **MedicaidEndpoint** | Technical endpoints for electronic service delivery |
| **MedicaidInsurancePlan** | Medicaid managed care plans and coverage details |
| **MedicaidNetwork** | Provider networks within Medicaid managed care plans |
| **MedicaidOrganizationAffiliation** | Relationships between healthcare organizations |

### Extensions

| Extension | Purpose |
|-----------|---------|
| **MedicaidProviderIdentifier** | Unique identifiers assigned by state Medicaid programs |
| **MedicaidEnrollmentStatus** | Current enrollment status in Medicaid programs |
| **MedicaidEnrollmentDate** | Date of enrollment or status changes |
| **MedicaidOwnershipDisclosure** | Ownership and control information for compliance |
| **MedicaidNetworkAdequacy** | Network adequacy status and metrics |
| **MedicaidNetworkType** | Type of provider network (e.g., HMO, PPO) |
| **MedicaidProviderType** | Medicaid-specific provider type classifications |
| **MedicaidServiceArea** | Geographic areas served by providers |

### Code Systems

| Code System | Description |
|-------------|-------------|
| **MedicaidProviderTypeCS** | Medicaid-specific provider type classifications |
| **MedicaidFacilityTypeCS** | Types of healthcare facilities in Medicaid |
| **MedicaidEnrollmentStatusCS** | Provider enrollment status codes |
| **MedicaidNetworkTypeCS** | Types of provider networks |
| **MedicaidNetworkAdequacyStatusCS** | Network adequacy assessment codes |
| **MedicaidOwnershipTypeCS** | Types of ownership structures |
| **MedicaidOwnerTypeCS** | Categories of ownership entities |
| **MedicaidOwnershipRelationshipTypeCS** | Types of ownership relationships |

### Value Sets & Concept Maps

- **Value Sets**: Medicaid-specific terminology collections for consistent coding
- **Concept Maps**: 
  - `MedicaidToNUCCProviderTypeMap` - Maps Medicaid provider types to NUCC taxonomy
  - `MedicaidToCMSFacilityTypeMap` - Maps Medicaid facility types to CMS Place of Service codes

## Dependencies

This Implementation Guide depends on the following specifications:

| Dependency | Version | Purpose |
|------------|---------|---------|
| **Da Vinci Plan-Net** | STU1.1 (v1.1.0) | Base provider directory profiles |
| **FAST NDH** | STU1 (v1.0.0) | National directory framework |
| **US Core** | STU5.0.1 (v5.0.1) | Core US healthcare profiles |
| **FHIR R4** | 4.0.1 | Base FHIR specification |

## Getting Started

### Prerequisites

Before building this Implementation Guide, ensure you have:

- **Node.js** (v14 or higher) and **npm**
- **SUSHI** (FSH compiler) - `npm install -g fsh-sushi`
- **HL7 FHIR IG Publisher** (automatically downloaded by build scripts)
- **Java** (v11 or higher) for the IG Publisher

### Building the Implementation Guide

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-org/medicaid-plannet-fsh.git
   cd medicaid-plannet-fsh
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Build FSH files**:
   ```bash
   npm run build
   ```

4. **Generate complete IG**:
   ```bash
   npm run ig:build
   ```

5. **View the generated IG**:
   Open `output/index.html` in your browser

### Project Structure

```
medicaid-plannet-fsh/
├── input/
│   ├── fsh/                          # FSH source files
│   │   ├── profiles/                 # FHIR profile definitions
│   │   ├── extensions/               # Extension definitions
│   │   ├── codesystems/             # Code system definitions
│   │   ├── valuesets/               # Value set definitions
│   │   ├── conceptmaps/             # Concept map definitions
│   │   ├── examples/                # Example resources
│   │   └── searchparameters/        # Search parameter definitions
│   ├── pagecontent/                 # Implementation guidance pages
│   └── images/                      # Documentation images
├── sushi-config.yaml                # SUSHI configuration
├── package.json                     # Node.js dependencies and scripts
└── ig.ini                          # IG Publisher configuration
```

## Implementation Guidance

### For State Medicaid Agencies

**MITA Alignment**:
- Supports MITA Provider Management business processes (PM01-PM05)
- Enables progression to higher MITA maturity levels
- Facilitates standardized data exchange with federal systems

**Key Implementation Areas**:
- Provider enrollment and credentialing workflows
- Network adequacy monitoring and reporting
- Data quality governance and validation
- Integration with TMSIS reporting requirements

**Getting Started**:
1. Review the [MITA Implementation Guidance](input/pagecontent/mita-implementation.md)
2. Assess current systems using the [Transition Assessment](input/pagecontent/transition-assessment.md)
3. Develop implementation strategy using the [Transition Planning](input/pagecontent/transition-planning.md) framework

### For Providers and MCOs

**Compliance Requirements**:
- CMS Interoperability Rule API implementation
- Provider directory data accuracy and timeliness
- Network adequacy reporting and monitoring

**Key Capabilities**:
- Standardized provider data submission
- Real-time directory updates and synchronization
- Cross-plan provider network visibility
- Automated compliance reporting

**Implementation Steps**:
1. Review [CMS Interoperability Rule](input/pagecontent/cms-interop-rule.md) requirements
2. Implement required FHIR profiles and extensions
3. Establish data quality processes per [Data Quality Framework](input/pagecontent/data-quality.md)
4. Deploy testing using the [Testing Framework](input/pagecontent/testing-framework.md)

### For Vendors and System Integrators

**Technical Implementation**:
- FHIR R4 server implementation with Medicaid profiles
- OAuth 2.0 and SMART on FHIR security implementation
- Bulk data export capabilities for large datasets
- Real-time synchronization and change notification

**Development Resources**:
- Complete set of example resources in `/input/fsh/examples/`
- Comprehensive test cases and validation rules
- Reference implementation patterns and best practices
- Integration guidance for common EHR and HIS systems

**Quality Assurance**:
- Use the [Testing Framework](input/pagecontent/testing-framework.md) for comprehensive validation
- Implement [Security Testing](input/pagecontent/security-testing.md) protocols
- Follow [Performance Testing](input/pagecontent/performance-testing.md) guidelines

## Use Cases

### Primary Use Cases

1. **Provider Directory Maintenance**
   - Automated provider enrollment and updates
   - Real-time synchronization across systems
   - Bulk data import/export capabilities

2. **Beneficiary Provider Search**
   - Location-based provider discovery
   - Specialty and service-based filtering
   - Network participation verification

3. **Network Adequacy Analysis**
   - Geographic coverage assessment
   - Provider-to-beneficiary ratio analysis
   - Specialty availability monitoring

4. **Claims Processing Integration**
   - Provider verification and validation
   - Network status confirmation
   - Eligibility and authorization support

5. **Quality and Compliance Reporting**
   - CMS reporting requirements
   - State-specific quality metrics
   - Program integrity monitoring

### Advanced Use Cases

- **Multi-state provider management** for providers practicing across state lines
- **Telehealth service discovery** and virtual care provider directories
- **Social determinants integration** for comprehensive care coordination
- **AI-powered provider matching** based on patient needs and preferences

## Contributing

We welcome contributions to improve this Implementation Guide. Here's how to get involved:

### Development Workflow

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Test your changes: `npm run build`
5. Commit your changes: `git commit -am 'Add some feature'`
6. Push to the branch: `git push origin feature/your-feature-name`
7. Test changes: `./_genonce.sh`
8. Submit a pull request with detailed description of changes

## Support

### Getting Help
- **FHIR Community**: [Join the #implementers stream](https://chat.fhir.org/#narrow/stream/179166-implementers)

