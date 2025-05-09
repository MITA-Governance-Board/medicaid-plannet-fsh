// MedicaidLocation.fsh
// Profile definition for a Medicaid Location

Profile: MedicaidLocation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Id: medicaid-location
Title: "Medicaid Location"
Description: "Profile for a location in a Medicaid provider directory, incorporating elements from the Da Vinci Plan-Net and FAST NDH Implementation Guides."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-06"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require status
* status 1..1

// Require name
* name 1..1

// Require type
* type 1..*

// Require telecom
* telecom 1..*

// Require address
* address 1..1
* address.line 1..*
* address.city 1..1
* address.state 1..1
* address.postalCode 1..1
* address.country 1..1

// Require managing organization
* managingOrganization 1..1
* managingOrganization only Reference(MedicaidOrganization)

// Require hours of operation
* hoursOfOperation 1..*
* hoursOfOperation.daysOfWeek 1..*
* hoursOfOperation.openingTime 1..1
* hoursOfOperation.closingTime 1..1

// Add extensions for accessibility information
* extension contains
    AccessibilityWheelchair named accessibilityWheelchair 0..1 and
    AccessibilityPublicTransport named accessibilityPublicTransport 0..1

// Define extensions for accessibility
Extension: AccessibilityWheelchair
Id: accessibility-wheelchair
Title: "Wheelchair Accessibility"
Description: "Indicates whether the location is accessible to individuals using wheelchairs."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only boolean
* valueBoolean 1..1

Extension: AccessibilityPublicTransport
Id: accessibility-public-transport
Title: "Public Transportation Accessibility"
Description: "Indicates whether the location is accessible via public transportation."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only boolean
* valueBoolean 1..1
