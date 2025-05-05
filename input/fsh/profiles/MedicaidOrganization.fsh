// MedicaidOrganization.fsh
// Profile definition for a Medicaid Organization

Profile: MedicaidOrganization
Parent: PlannetOrganization
Id: medicaid-organization
Title: "Medicaid Organization"
Description: "Profile for an organization in a Medicaid provider directory, extending the Da Vinci Plan-Net Organization profile."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-02"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require at least one identifier with a Medicaid Provider Identifier extension
* identifier 1..*
// * identifier ^slicing.discriminator.type = #pattern
// * identifier ^slicing.discriminator.path = "extension.url"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.description = "Slice based on the identifier.extension pattern"

// * identifier contains medicaidProviderId 0..1
// * identifier[medicaidProviderId].extension contains MedicaidProviderIdentifier named medicaidProviderIdentifier 1..1
// * identifier[medicaidProviderId] ^short = "Medicaid Provider Identifier"
// * identifier[medicaidProviderId] ^definition = "A unique identifier assigned to the organization by a state Medicaid program."

// Add Medicaid-specific extensions
* extension contains
    MedicaidEnrollmentStatus named medicaidEnrollmentStatus 0..1 and
    MedicaidEnrollmentDate named medicaidEnrollmentDate 0..1 and
    MedicaidOwnershipDisclosure named medicaidOwnershipDisclosure 0..1

// Require organization type for Medicaid organizations
* type 1..*
* type from MedicaidFacilityTypeVS (extensible)

// Require contact information
* telecom 1..*
* address 1..*

// Require active status
* active 1..1
