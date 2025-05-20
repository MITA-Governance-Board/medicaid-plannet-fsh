// MedicaidPractitioner.fsh
// Profile definition for a Medicaid Practitioner

Profile: MedicaidPractitioner
Parent: PlannetPractitioner
Id: medicaid-practitioner
Title: "Medicaid Practitioner"
Description: "Profile for a practitioner in a Medicaid provider directory, extending the Da Vinci Plan-Net Practitioner profile and incorporating elements from the FAST NDH Implementation Guide."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-02"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require at least one identifier
* identifier 1..*

// Add Medicaid Provider Identifier extension
* extension contains MedicaidProviderIdentifier named medicaidProviderIdentifier 0..1

// Add Medicaid-specific extensions
* extension contains
    MedicaidEnrollmentStatus named medicaidEnrollmentStatus 0..1 and
    MedicaidEnrollmentDate named medicaidEnrollmentDate 0..1 and
    MedicaidProviderType named medicaidProviderType 0..1

// Require qualification information for Medicaid practitioners
* qualification 1..*
* qualification.identifier 1..*
* qualification.issuer 1..1
* qualification.period 1..1
* qualification.period.start 1..1
// No NDH-specific qualification extensions

// Require contact information
* telecom 1..*
* address 1..*
