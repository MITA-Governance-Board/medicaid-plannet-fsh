# Medicaid Provider Directory Implementation Guide

## Overview

This Implementation Guide (IG) defines a FHIR-based approach for exchanging Medicaid Provider Directory information in accordance with the Medicaid Information Technology Architecture (MITA) 3.0 specification. It builds upon the [Da Vinci Plan-Net Implementation Guide](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/) and the [FAST National Directory of Healthcare Providers & Services (NDH) Implementation Guide](http://hl7.org/fhir/us/ndh/STU1/), and adheres to the [CMS Interoperability and Patient Access API Rule](https://www.cms.gov/Regulations-and-Guidance/Guidance/Interoperability/index).

The goal of this IG is to standardize how Medicaid provider directory information is exchanged between systems, ensuring that patients, providers, and other stakeholders have access to accurate and up-to-date information about Medicaid providers.

## Purpose

This IG addresses the need for standardized provider directory data exchange in the Medicaid ecosystem by:

1. Defining FHIR profiles for key provider directory resources based on the Da Vinci Plan-Net IG and FAST NDH IG
2. Aligning with MITA 3.0 business processes and data requirements
3. Leveraging industry standard code systems (NUCC, CMS Place of Service, HCPCS) alongside Medicaid-specific codes
4. Providing concept maps between Medicaid-specific codes and industry standards to enhance interoperability
5. Supporting compliance with the CMS Interoperability and Patient Access API Rule
6. Implementing version management for code systems to support evolution over time
7. Providing implementation guidance for Medicaid agencies and their technology partners

## Scope

This IG covers the following key areas:

* Provider demographic information
* Provider qualifications and credentials
* Provider locations and service offerings
* Network and plan affiliations
* Provider accessibility information
* Electronic endpoints for electronic service delivery

## Audience

This IG is intended for:

* State Medicaid agencies
* Medicaid Managed Care Organizations (MCOs)
* Health Information Exchanges (HIEs) working with Medicaid data
* Software developers implementing Medicaid provider directory solutions
* Regulators and compliance officers

## Background

### Medicaid Information Technology Architecture (MITA)

The Medicaid Information Technology Architecture (MITA) is a CMS initiative that establishes national guidelines for technologies and processes that improve the administration of the Medicaid program. MITA 3.0 includes specific business processes and data requirements related to provider management and provider information exchange.

### Da Vinci Plan-Net

The Da Vinci Payer Data Exchange (PDex) Plan Network Directory (Plan-Net) IG defines a FHIR-based approach to provider directories for health plans. This IG leverages and extends Plan-Net to address the specific needs of Medicaid provider directories.

### FAST National Directory of Healthcare Providers & Services (NDH)

The FAST NDH Implementation Guide provides a framework for a national directory of healthcare providers and services. It defines FHIR profiles and operations for accessing and maintaining provider directory information across multiple organizations and care settings. This IG incorporates key concepts from the NDH IG to ensure alignment with national directory standards and to facilitate interoperability with other provider directory systems.

### CMS Interoperability Rule

The CMS Interoperability and Patient Access API Rule requires certain payers, including Medicaid managed care plans, to implement and maintain standards-based APIs that allow patients to easily access their claims and encounter information, including provider directory information.

## How to Read This Guide

This IG is organized into the following sections:

1. **Background** - Provides context on MITA 3.0, the CMS Interoperability Rule, and related standards
2. **Specification** - Defines the technical specifications, including profiles, extensions, and terminology
3. **Examples** - Provides example resources demonstrating the use of the profiles
4. **Downloads** - Contains downloadable artifacts and other resources

Implementers should start with the Background section to understand the context and requirements, then proceed to the Specification section for technical details.
