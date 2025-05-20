// MedicaidOrganization.fsh
// Profile definition for a Medicaid Organization

Profile: MedicaidOrganization
Parent: PlannetOrganization
Id: medicaid-organization
Title: "Medicaid Organization"
Description: "Profile for an organization in a Medicaid provider directory, extending the Da Vinci Plan-Net Organization profile and incorporating elements from the FAST NDH Implementation Guide."
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
    MedicaidOwnershipDisclosure named medicaidOwnershipDisclosure 0..1

// Require organization type for Medicaid organizations
* type from MedicaidFacilityTypeVS (extensible)

// Require contact information
* telecom 1..*

