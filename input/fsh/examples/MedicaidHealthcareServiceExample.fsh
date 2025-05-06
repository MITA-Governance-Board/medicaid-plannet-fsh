// MedicaidHealthcareServiceExample.fsh
// Example instance for Medicaid Healthcare Service

Instance: MedicaidHealthcareServiceExample1
InstanceOf: MedicaidHealthcareService
Title: "Example Medicaid Healthcare Service"
Description: "Example of a healthcare service provided by a Medicaid organization"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-healthcare-service"
* meta.lastUpdated = "2025-05-06T12:00:00Z"
* active = true
* providedBy = Reference(MedicaidOrganizationExample1)
* category = http://terminology.hl7.org/CodeSystem/service-category#8 "Primary care"
* type = http://terminology.hl7.org/CodeSystem/service-type#124 "General Practice"
* specialty = http://nucc.org/provider-taxonomy#207Q00000X "Family Medicine"
* location = Reference(MedicaidLocationExample1)
* name = "Primary Care Services"
* comment = "Comprehensive primary care services for Medicaid beneficiaries"
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "primarycare@anytownmedical.example.org"
* telecom[1].use = #work
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[0].daysOfWeek[1] = #tue
* availableTime[0].daysOfWeek[2] = #wed
* availableTime[0].daysOfWeek[3] = #thu
* availableTime[0].daysOfWeek[4] = #fri
* availableTime[0].availableStartTime = "09:00:00"
* availableTime[0].availableEndTime = "17:00:00"
* availableTime[1].daysOfWeek[0] = #sat
* availableTime[1].availableStartTime = "09:00:00"
* availableTime[1].availableEndTime = "12:00:00"
* notAvailable[0].description = "Closed on major holidays"
* notAvailable[0].during.start = "2025-12-25"
* notAvailable[0].during.end = "2025-12-26"
* availabilityExceptions = "Hours may vary during inclement weather"
* extension[medicaidServiceAuthorization].extension[required].valueBoolean = false
* extension[medicaidServiceAuthorization].extension[authorizationProcess].valueString = "Prior authorization is not required for routine primary care services. Referrals to specialists may require authorization."
* extension[medicaidServiceEligibility].extension[eligibilityCriteria][0].valueString = "Must be enrolled in Medicaid"
* extension[medicaidServiceEligibility].extension[eligibilityCriteria][1].valueString = "Must be assigned to a primary care provider in the network"
* extension[medicaidServiceEligibility].extension[eligibilityVerificationProcess].valueString = "Eligibility is verified at check-in using the Medicaid Management Information System (MMIS)"
* extension[medicaidReferralRequirement].extension[referralRequired].valueBoolean = false
* extension[medicaidReferralRequirement].extension[referralProcess].valueString = "No referral is required for primary care services. Referrals to specialists can be made during the visit."
