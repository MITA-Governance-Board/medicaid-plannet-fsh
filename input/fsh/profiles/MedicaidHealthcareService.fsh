// MedicaidHealthcareService.fsh
// Profile definition for a Medicaid Healthcare Service

Profile: MedicaidHealthcareService
Parent: PlannetHealthcareService
Id: medicaid-healthcare-service
Title: "Medicaid Healthcare Service"
Description: "Profile for a healthcare service in a Medicaid provider directory, incorporating elements from the Da Vinci Plan-Net and FAST NDH Implementation Guides."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-06"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require providing organization
* providedBy 1..1
* providedBy only Reference(MedicaidOrganization)

// Require type
* type 1..*

// Require location
* location 1..*
* location only Reference(MedicaidLocation)

// Require telecom
* telecom 1..*

// Require availability information
* availableTime 1..*
* availableTime.daysOfWeek 1..*
* availableTime.availableStartTime 1..1
* availableTime.availableEndTime 1..1

// Add extensions for Medicaid-specific information
* extension contains
    MedicaidServiceAuthorization named medicaidServiceAuthorization 0..1 and
    MedicaidServiceEligibility named medicaidServiceEligibility 0..1 and
    MedicaidReferralRequirement named medicaidReferralRequirement 0..1

// Define extensions
Extension: MedicaidServiceAuthorization
Id: medicaid-service-authorization
Title: "Medicaid Service Authorization"
Description: "Requirements for prior authorization of services."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension contains
    required 1..1 and
    authorizationProcess 0..1
* extension[required].value[x] only boolean
* extension[authorizationProcess].value[x] only string

Extension: MedicaidServiceEligibility
Id: medicaid-service-eligibility
Title: "Medicaid Service Eligibility"
Description: "Eligibility criteria for receiving the service."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension contains
    eligibilityCriteria 1..* and
    eligibilityVerificationProcess 0..1
* extension[eligibilityCriteria].value[x] only string
* extension[eligibilityVerificationProcess].value[x] only string

Extension: MedicaidReferralRequirement
Id: medicaid-referral-requirement
Title: "Medicaid Referral Requirement"
Description: "Requirements for referrals to the service."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension contains
    referralRequired 1..1 and
    referralProcess 0..1
* extension[referralRequired].value[x] only boolean
* extension[referralProcess].value[x] only string
