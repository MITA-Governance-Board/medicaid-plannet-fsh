// MedicaidNetwork.fsh
// Profile definition for a Medicaid Network

Profile: MedicaidNetwork
Parent: PlannetNetwork
Id: medicaid-network
Title: "Medicaid Network"
Description: "Profile for a network in a Medicaid provider directory, extending the Da Vinci Plan-Net Network profile and incorporating elements from the FAST NDH Implementation Guide."
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

// Require network type
* type 1..1
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationType#ntwk

// Add Medicaid-specific extensions
* extension contains
    MedicaidNetworkType named medicaidNetworkType 0..1 and
    MedicaidNetworkAdequacy named medicaidNetworkAdequacy 0..1 and
    MedicaidServiceArea named medicaidServiceArea 0..*

// Contact information
* contact 1..*
* contact.telecom 1..*
* address 0..*

// No NDH-specific elements for now

// Require active status
* active 1..1
