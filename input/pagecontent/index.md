### Overview

This Implementation Guide (IG) defines a FHIR-based approach for exchanging Medicaid Provider Directory information in accordance with the Medicaid Information Technology Architecture (MITA) 3.0 specification. It builds upon the [Da Vinci Plan-Net Implementation Guide](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/) and the [FAST National Directory of Healthcare Providers & Services (NDH) Implementation Guide](http://hl7.org/fhir/us/ndh/STU1/), and adheres to the [CMS Interoperability and Patient Access API Rule](https://www.cms.gov/Regulations-and-Guidance/Guidance/Interoperability/index).

The goal of this IG is to standardize how Medicaid provider directory information is exchanged between systems, ensuring that patients, providers, and other stakeholders have access to accurate and up-to-date information about Medicaid providers.

### Purpose

This IG addresses the need for standardized provider directory data exchange in the Medicaid ecosystem by:

1. **Defining FHIR profiles for key provider directory resources** - Creating standardized data structures based on the Da Vinci Plan-Net IG and FAST NDH IG that specify how provider information should be represented in FHIR. These profiles ensure consistent data representation across different Medicaid systems and implementations while maintaining compatibility with broader healthcare interoperability standards.

2. **Aligning with MITA 3.0 business processes and data requirements** - Ensuring that the technical implementation supports the business processes defined in the Medicaid Information Technology Architecture framework, facilitating seamless integration with other Medicaid systems and enabling states to achieve higher MITA maturity levels in their provider management capabilities.

3. **Leveraging industry standard code systems** - Incorporating established healthcare terminology standards (NUCC, CMS Place of Service, HCPCS) alongside Medicaid-specific codes to ensure that provider information is represented using widely recognized coding systems while accommodating Medicaid-specific concepts that may not exist in national standards.

4. **Providing concept maps between Medicaid-specific codes and industry standards** - Creating explicit mappings that translate between Medicaid-specific terminology and industry-standard codes, enabling systems to transform data between different representations and facilitating data exchange between Medicaid and non-Medicaid healthcare entities.

5. **Supporting compliance with the CMS Interoperability and Patient Access API Rule** - Implementing the technical requirements specified in federal regulations for making provider directory information available through standardized APIs, helping Medicaid agencies and MCOs meet their legal obligations while improving beneficiary access to provider information.

6. **Implementing version management for code systems** - Establishing mechanisms to track and manage changes to terminology over time, allowing for the evolution of codes and concepts while maintaining backward compatibility and providing a clear migration path as requirements change.

7. **Providing implementation guidance for Medicaid agencies and their technology partners** - Offering detailed technical documentation, best practices, and implementation strategies that address the unique challenges of Medicaid provider directory management, helping states and their vendors successfully implement interoperable provider directory solutions regardless of their starting point or technical environment.

### Scope

This IG covers the following key areas:

* **Provider demographic information** - Comprehensive personal and professional details about healthcare providers, including names, contact information, languages spoken, and demographic data that helps beneficiaries identify and connect with appropriate providers.

* **Provider qualifications and credentials** - Detailed information about provider education, specialties, board certifications, licenses, and other qualifications that establish their expertise and legal authority to provide specific healthcare services.

* **Provider locations and service offerings** - Geographic locations where providers practice, including physical addresses, practice hours, telehealth availability, and specific healthcare services offered at each location to help beneficiaries understand where and how they can access care.

* **Network and plan affiliations** - Information about which Medicaid managed care plans a provider participates in, network status, and any restrictions or special arrangements that affect beneficiary access to care through specific plans.

* **Provider accessibility information** - Details about physical accessibility features of provider locations, accommodation capabilities for patients with disabilities, cultural competencies, and other factors that impact equitable access to care for all Medicaid beneficiaries.

* **Electronic endpoints for electronic service delivery** - Technical connection points for digital health services, including secure messaging, telehealth platforms, electronic referrals, and other digital touchpoints that enable virtual care delivery and electronic administrative transactions.

### Audience

This IG is intended for:

* **State Medicaid agencies** - The primary implementers of this guide, responsible for maintaining accurate provider directories and ensuring compliance with federal regulations while meeting the specific needs of their state's Medicaid program and beneficiary population.

* **Medicaid Managed Care Organizations (MCOs)** - Health plans that contract with state Medicaid agencies to deliver and manage healthcare services, who need standardized approaches to exchange provider data with state systems and other healthcare entities.

* **Health Information Exchanges (HIEs) working with Medicaid data** - Regional and statewide organizations that facilitate the electronic exchange of health information, including provider directory data, between different healthcare entities serving Medicaid populations.

* **Software developers implementing Medicaid provider directory solutions** - Technology professionals building or maintaining systems that create, store, manage, or exchange Medicaid provider directory information, who need technical specifications to ensure interoperability.

* **Regulators and compliance officers** - Individuals responsible for ensuring that provider directory implementations meet legal and regulatory requirements, including CMS mandates, state regulations, and industry standards for data quality and accessibility.

### Background

#### Medicaid Information Technology Architecture (MITA)

The Medicaid Information Technology Architecture (MITA) is a CMS initiative that establishes national guidelines for technologies and processes that improve the administration of the Medicaid program. MITA 3.0 includes specific business processes and data requirements related to provider management and provider information exchange.

#### Da Vinci Plan-Net

The Da Vinci Payer Data Exchange (PDex) Plan Network Directory (Plan-Net) IG defines a FHIR-based approach to provider directories for health plans. This IG leverages and extends Plan-Net to address the specific needs of Medicaid provider directories.

#### FAST National Directory of Healthcare Providers & Services (NDH)

The FAST NDH Implementation Guide provides a framework for a national directory of healthcare providers and services. It defines FHIR profiles and operations for accessing and maintaining provider directory information across multiple organizations and care settings. This IG incorporates key concepts from the NDH IG to ensure alignment with national directory standards and to facilitate interoperability with other provider directory systems.

#### CMS Interoperability Rule

The CMS Interoperability and Patient Access API Rule requires certain payers, including Medicaid managed care plans, to implement and maintain standards-based APIs that allow patients to easily access their claims and encounter information, including provider directory information.

### How to Read This Guide

This IG is organized into the following sections:

1. **Background** - Provides comprehensive context on MITA 3.0 framework, the CMS Interoperability Rule requirements, and related healthcare standards that form the foundation for this implementation guide. This section helps readers understand the regulatory landscape, business drivers, and technical ecosystem in which Medicaid provider directories operate.

2. **Specification** - Defines the detailed technical specifications, including FHIR profiles, extensions, and terminology resources that standardize how Medicaid provider directory information is represented. This section includes conformance requirements, data element definitions, and implementation notes for each resource type.

3. **Examples** - Provides concrete example resources demonstrating the practical application of the profiles in real-world scenarios. These examples illustrate how to represent different types of providers, services, locations, and relationships using the FHIR resources defined in this guide.

4. **Downloads** - Contains downloadable artifacts and other resources including validator packages, sample implementations, reference implementations, and other tools to assist implementers in adopting this specification.

Implementers should start with the Background section to understand the context and requirements, then proceed to the Specification section for technical details. The Examples section provides practical guidance on implementation, while the Downloads section offers tools and resources to facilitate adoption.
