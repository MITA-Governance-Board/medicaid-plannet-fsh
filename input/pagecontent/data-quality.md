# Data Quality Framework

## Overview

This Implementation Guide (IG) provides a framework for ensuring the quality, currency, and accuracy of provider directory data. High-quality provider directory data is essential for patients to find appropriate care, for payers to manage networks, and for regulators to assess network adequacy. This framework outlines approaches for data validation, attestation, verification, and maintenance.

## Data Quality Principles

The following principles should guide the implementation of data quality processes:

1. **Accuracy**: Data should correctly represent the real-world entities and relationships it describes.
2. **Completeness**: All required data elements should be present and populated with meaningful values.
3. **Consistency**: Data should be consistent across different systems and over time.
4. **Timeliness**: Data should be updated promptly when changes occur.
5. **Traceability**: The source and history of data should be documented.
6. **Accessibility**: Data should be accessible to authorized users in a usable format.

## Provider Attestation

Provider attestation is a process by which providers confirm the accuracy of their information. This IG recommends the following approach to provider attestation:

### Attestation Process

1. **Initial Attestation**: Providers should attest to the accuracy of their information during the initial enrollment process.
2. **Periodic Re-attestation**: Providers should re-attest to the accuracy of their information at regular intervals (e.g., quarterly, semi-annually, or annually).
3. **Event-Driven Attestation**: Providers should attest to the accuracy of their information when significant changes occur (e.g., change of address, addition of new services).

### Attestation Documentation

The following information should be captured during the attestation process:

- Date of attestation
- Identity of the attesting individual
- Scope of the attestation (e.g., all information, specific elements)
- Method of attestation (e.g., online portal, signed document)

### Attestation Extensions

This IG defines the following extensions to document attestation information:

```
Extension: AttestationInformation
Id: attestation-information
Title: "Attestation Information"
Description: "Information about the attestation of data accuracy."
* ^context.type = #element
* ^context.expression = "Resource"
* extension contains
    attestationDate 1..1 and
    attestingIndividual 1..1 and
    attestationMethod 1..1 and
    attestationScope 0..1
* extension[attestationDate].value[x] only dateTime
* extension[attestingIndividual].value[x] only Reference(Practitioner or PractitionerRole or RelatedPerson)
* extension[attestationMethod].value[x] only CodeableConcept
* extension[attestationMethod].valueCodeableConcept from AttestationMethodVS (required)
* extension[attestationScope].value[x] only string

CodeSystem: AttestationMethodCS
Id: attestation-method-cs
Title: "Attestation Method Code System"
Description: "Code system for methods of attestation."
* #online-portal "Online Portal" "Attestation through an online portal"
* #signed-document "Signed Document" "Attestation through a signed document"
* #electronic-signature "Electronic Signature" "Attestation through an electronic signature"
* #verbal "Verbal" "Verbal attestation"
* #delegated "Delegated" "Attestation delegated to an authorized representative"

ValueSet: AttestationMethodVS
Id: attestation-method-vs
Title: "Attestation Method Value Set"
Description: "Value set for methods of attestation."
* include codes from system AttestationMethodCS
```

## Verification Workflows

Verification workflows are processes by which the accuracy of provider information is confirmed by a third party. This IG recommends the following approach to verification workflows:

### Verification Process

1. **Initial Verification**: Provider information should be verified during the initial enrollment process.
2. **Periodic Re-verification**: Provider information should be re-verified at regular intervals (e.g., annually).
3. **Event-Driven Verification**: Provider information should be verified when significant changes occur or when discrepancies are identified.

### Verification Methods

The following methods can be used for verification:

- **Primary Source Verification**: Verification directly with the original source of the information (e.g., state licensing boards, educational institutions).
- **Secondary Source Verification**: Verification through a recognized secondary source (e.g., NPPES, CAQH).
- **Automated Verification**: Verification through automated processes (e.g., address validation services, phone number validation services).
- **Manual Verification**: Verification through manual processes (e.g., phone calls, site visits).

### Verification Documentation

The following information should be captured during the verification process:

- Date of verification
- Method of verification
- Source of verification
- Result of verification
- Identity of the verifier

### Verification Extensions

This IG defines the following extensions to document verification information:

```
Extension: VerificationInformation
Id: verification-information
Title: "Verification Information"
Description: "Information about the verification of data accuracy."
* ^context.type = #element
* ^context.expression = "Resource"
* extension contains
    verificationDate 1..1 and
    verificationMethod 1..1 and
    verificationSource 1..1 and
    verificationResult 1..1 and
    verifier 0..1 and
    nextVerificationDue 0..1
* extension[verificationDate].value[x] only dateTime
* extension[verificationMethod].value[x] only CodeableConcept
* extension[verificationMethod].valueCodeableConcept from VerificationMethodVS (required)
* extension[verificationSource].value[x] only CodeableConcept
* extension[verificationSource].valueCodeableConcept from VerificationSourceVS (extensible)
* extension[verificationResult].value[x] only CodeableConcept
* extension[verificationResult].valueCodeableConcept from VerificationResultVS (required)
* extension[verifier].value[x] only Reference(Practitioner or PractitionerRole or Organization)
* extension[nextVerificationDue].value[x] only date

CodeSystem: VerificationMethodCS
Id: verification-method-cs
Title: "Verification Method Code System"
Description: "Code system for methods of verification."
* #primary-source "Primary Source" "Verification directly with the original source"
* #secondary-source "Secondary Source" "Verification through a recognized secondary source"
* #automated "Automated" "Verification through automated processes"
* #manual "Manual" "Verification through manual processes"

ValueSet: VerificationMethodVS
Id: verification-method-vs
Title: "Verification Method Value Set"
Description: "Value set for methods of verification."
* include codes from system VerificationMethodCS

CodeSystem: VerificationSourceCS
Id: verification-source-cs
Title: "Verification Source Code System"
Description: "Code system for sources of verification."
* #state-license-board "State License Board" "State professional licensing board"
* #nppes "NPPES" "National Plan and Provider Enumeration System"
* #caqh "CAQH" "Council for Affordable Quality Healthcare"
* #address-validation "Address Validation Service" "Address validation service"
* #phone-validation "Phone Validation Service" "Phone number validation service"
* #site-visit "Site Visit" "Physical site visit"
* #provider-call "Provider Call" "Direct call to the provider"

ValueSet: VerificationSourceVS
Id: verification-source-vs
Title: "Verification Source Value Set"
Description: "Value set for sources of verification."
* include codes from system VerificationSourceCS

CodeSystem: VerificationResultCS
Id: verification-result-cs
Title: "Verification Result Code System"
Description: "Code system for results of verification."
* #verified "Verified" "Information was verified as accurate"
* #discrepancy "Discrepancy" "Discrepancy found in the information"
* #unable-to-verify "Unable to Verify" "Unable to verify the information"
* #pending "Pending" "Verification is pending"

ValueSet: VerificationResultVS
Id: verification-result-vs
Title: "Verification Result Value Set"
Description: "Value set for results of verification."
* include codes from system VerificationResultCS
```

## Data Source Documentation

Data source documentation provides information about the origin of data elements. This IG recommends the following approach to data source documentation:

### Data Source Information

The following information should be captured about data sources:

- Source of the data
- Date the data was obtained
- Method by which the data was obtained
- Reliability of the source

### Data Source Extensions

This IG defines the following extensions to document data source information:

```
Extension: DataSourceInformation
Id: data-source-information
Title: "Data Source Information"
Description: "Information about the source of data."
* ^context.type = #element
* ^context.expression = "Resource"
* extension contains
    dataSource 1..1 and
    dataDate 1..1 and
    dataMethod 0..1 and
    dataReliability 0..1
* extension[dataSource].value[x] only CodeableConcept
* extension[dataSource].valueCodeableConcept from DataSourceVS (extensible)
* extension[dataDate].value[x] only dateTime
* extension[dataMethod].value[x] only CodeableConcept
* extension[dataMethod].valueCodeableConcept from DataMethodVS (extensible)
* extension[dataReliability].value[x] only CodeableConcept
* extension[dataReliability].valueCodeableConcept from DataReliabilityVS (required)

CodeSystem: DataSourceCS
Id: data-source-cs
Title: "Data Source Code System"
Description: "Code system for sources of data."
* #provider-direct "Provider Direct" "Data provided directly by the provider"
* #provider-portal "Provider Portal" "Data entered by the provider through a portal"
* #administrative "Administrative" "Data from administrative systems"
* #claims "Claims" "Data derived from claims"
* #third-party "Third Party" "Data from a third-party source"
* #public-record "Public Record" "Data from public records"

ValueSet: DataSourceVS
Id: data-source-vs
Title: "Data Source Value Set"
Description: "Value set for sources of data."
* include codes from system DataSourceCS

CodeSystem: DataMethodCS
Id: data-method-cs
Title: "Data Method Code System"
Description: "Code system for methods of data collection."
* #manual-entry "Manual Entry" "Data entered manually"
* #electronic-submission "Electronic Submission" "Data submitted electronically"
* #api "API" "Data obtained through an API"
* #file-transfer "File Transfer" "Data obtained through file transfer"
* #web-scraping "Web Scraping" "Data obtained through web scraping"

ValueSet: DataMethodVS
Id: data-method-vs
Title: "Data Method Value Set"
Description: "Value set for methods of data collection."
* include codes from system DataMethodCS

CodeSystem: DataReliabilityCS
Id: data-reliability-cs
Title: "Data Reliability Code System"
Description: "Code system for reliability of data sources."
* #high "High" "Highly reliable source"
* #medium "Medium" "Moderately reliable source"
* #low "Low" "Low reliability source"
* #unknown "Unknown" "Unknown reliability"

ValueSet: DataReliabilityVS
Id: data-reliability-vs
Title: "Data Reliability Value Set"
Description: "Value set for reliability of data sources."
* include codes from system DataReliabilityCS
```

## Data Currency

Data currency refers to how up-to-date the information is. This IG recommends the following approach to data currency:

### Last Updated Timestamps

All resources should include a `meta.lastUpdated` element indicating when the resource was last updated. In addition, specific data elements may have their own last updated timestamps.

### Currency Monitoring

Systems should monitor the currency of data and flag data that has not been updated within a specified timeframe. The appropriate timeframe may vary depending on the type of data and regulatory requirements.

### Currency Extensions

This IG defines the following extensions to document data currency information:

```
Extension: DataCurrencyInformation
Id: data-currency-information
Title: "Data Currency Information"
Description: "Information about the currency of data."
* ^context.type = #element
* ^context.expression = "Resource"
* extension contains
    lastVerifiedDate 1..1 and
    updateFrequency 0..1 and
    nextUpdateDue 0..1 and
    currencyStatus 0..1
* extension[lastVerifiedDate].value[x] only dateTime
* extension[updateFrequency].value[x] only Duration
* extension[nextUpdateDue].value[x] only date
* extension[currencyStatus].value[x] only CodeableConcept
* extension[currencyStatus].valueCodeableConcept from DataCurrencyStatusVS (required)

CodeSystem: DataCurrencyStatusCS
Id: data-currency-status-cs
Title: "Data Currency Status Code System"
Description: "Code system for status of data currency."
* #current "Current" "Data is current"
* #due-for-update "Due for Update" "Data is due for an update"
* #overdue "Overdue" "Data update is overdue"
* #unknown "Unknown" "Currency status is unknown"

ValueSet: DataCurrencyStatusVS
Id: data-currency-status-vs
Title: "Data Currency Status Value Set"
Description: "Value set for status of data currency."
* include codes from system DataCurrencyStatusCS
```

## Implementation Guidance

### Resource-Level vs. Element-Level Documentation

Data quality documentation can be applied at both the resource level and the element level:

- **Resource-Level Documentation**: Apply extensions to the resource as a whole to document attestation, verification, data source, and currency information for the entire resource.
- **Element-Level Documentation**: Apply extensions to specific elements to document attestation, verification, data source, and currency information for individual data elements.

### Prioritizing Data Elements

Not all data elements require the same level of quality assurance. Implementers should prioritize data elements based on:

- Regulatory requirements
- Impact on patient care
- Frequency of use
- Frequency of change

### Integration with Existing Processes

Data quality processes should be integrated with existing provider enrollment, credentialing, and directory maintenance processes to minimize duplication of effort.

### Automation

Where possible, data quality processes should be automated to reduce manual effort and improve efficiency. Examples of automation include:

- Automated address validation
- Automated phone number validation
- Automated license verification through integration with licensing board APIs
- Automated reminders for attestation and verification

### Reporting and Analytics

Systems should provide reporting and analytics capabilities to monitor data quality, including:

- Completeness metrics
- Currency metrics
- Verification status
- Attestation status
- Discrepancy reports

## Examples

### Example 1: Provider Attestation

```
Instance: MedicaidPractitionerExample1
InstanceOf: MedicaidPractitioner
Title: "Example Medicaid Practitioner with Attestation"
Description: "Example of a practitioner enrolled in Medicaid with attestation information"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1122334455"
* active = true
* name.family = "Smith"
* name.given = "John"
* name.given[1] = "A"
* name.prefix = "Dr."
* name.suffix = "MD"
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #work
* address.use = #work
* address.type = #both
* address.line = "123 Main St"
* address.line[1] = "Suite 400"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* extension[AttestationInformation].extension[attestationDate].valueDateTime = "2025-04-15T10:30:00Z"
* extension[AttestationInformation].extension[attestingIndividual].valueReference = Reference(MedicaidPractitionerExample1)
* extension[AttestationInformation].extension[attestationMethod].valueCodeableConcept = AttestationMethodCS#online-portal "Online Portal"
* extension[AttestationInformation].extension[attestationScope].valueString = "All demographic and practice information"
```

### Example 2: Address Verification

```
Instance: MedicaidLocationExample1
InstanceOf: MedicaidLocation
Title: "Example Medicaid Location with Verification"
Description: "Example of a location where Medicaid services are provided with verification information"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-location"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* status = #active
* name = "Anytown Medical Group - Main Office"
* description = "Main office of Anytown Medical Group"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#OUTPHARM "outpatient pharmacy"
* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"
* telecom[0].use = #work
* address.use = #work
* address.type = #both
* address.line = "456 Health Avenue"
* address.line[1] = "Building B"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* address.extension[VerificationInformation].extension[verificationDate].valueDateTime = "2025-04-10T14:20:00Z"
* address.extension[VerificationInformation].extension[verificationMethod].valueCodeableConcept = VerificationMethodCS#automated "Automated"
* address.extension[VerificationInformation].extension[verificationSource].valueCodeableConcept = VerificationSourceCS#address-validation "Address Validation Service"
* address.extension[VerificationInformation].extension[verificationResult].valueCodeableConcept = VerificationResultCS#verified "Verified"
* address.extension[VerificationInformation].extension[nextVerificationDue].valueDate = "2026-04-10"
* managingOrganization = Reference(MedicaidOrganizationExample1)
```

### Example 3: Data Source and Currency

```
Instance: MedicaidOrganizationExample1
InstanceOf: MedicaidOrganization
Title: "Example Medicaid Organization with Data Source and Currency Information"
Description: "Example of an organization enrolled in Medicaid with data source and currency information"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-organization"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9988776655"
* active = true
* type = MedicaidFacilityTypeCS#clinic "Clinic"
* name = "Anytown Medical Group"
* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"
* telecom[0].use = #work
* address.use = #work
* address.type = #both
* address.line = "456 Health Avenue"
* address.line[1] = "Building B"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* extension[DataSourceInformation].extension[dataSource].valueCodeableConcept = DataSourceCS#provider-portal "Provider Portal"
* extension[DataSourceInformation].extension[dataDate].valueDateTime = "2025-03-20T09:15:00Z"
* extension[DataSourceInformation].extension[dataMethod].valueCodeableConcept = DataMethodCS#electronic-submission "Electronic Submission"
* extension[DataSourceInformation].extension[dataReliability].valueCodeableConcept = DataReliabilityCS#high "High"
* extension[DataCurrencyInformation].extension[lastVerifiedDate].valueDateTime = "2025-04-15T10:30:00Z"
* extension[DataCurrencyInformation].extension[updateFrequency].valueDuration.value = 90
* extension[DataCurrencyInformation].extension[updateFrequency].valueDuration.unit = "days"
* extension[DataCurrencyInformation].extension[updateFrequency].valueDuration.system = "http://unitsofmeasure.org"
* extension[DataCurrencyInformation].extension[updateFrequency].valueDuration.code = #d
* extension[DataCurrencyInformation].extension[nextUpdateDue].valueDate = "2025-07-14"
* extension[DataCurrencyInformation].extension[currencyStatus].valueCodeableConcept = DataCurrencyStatusCS#current "Current"
