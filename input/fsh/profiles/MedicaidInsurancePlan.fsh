// MedicaidInsurancePlan.fsh
// Profile definition for a Medicaid Insurance Plan

Profile: MedicaidInsurancePlan
Parent: InsurancePlan
Id: medicaid-insurance-plan
Title: "Medicaid Insurance Plan"
Description: "Profile for a Medicaid insurance plan in a provider directory, incorporating elements from the Da Vinci Plan-Net and FAST NDH Implementation Guides."
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

// Require type
* type 1..*
* type from MedicaidProgramTypeVS (extensible)

// Require name
* name 1..1

// Require period
* period 1..1
* period.start 1..1

// Require coverage area
* coverageArea 1..*
* coverageArea only Reference(MedicaidLocation)

// Require owner organization
* ownedBy 1..1
* ownedBy only Reference(MedicaidOrganization)

// Require administrator organization
* administeredBy 1..1
* administeredBy only Reference(MedicaidOrganization)

// Require network
* network 1..*
* network only Reference(MedicaidNetwork)

// Require contact
* contact 1..*
* contact.telecom 1..*

// Add extensions for Medicaid-specific information
* extension contains
    MedicaidProgramType named medicaidProgramType 1..1 and
    MedicaidEligibilityCriteria named medicaidEligibilityCriteria 0..* and
    MedicaidEnrollmentProcess named medicaidEnrollmentProcess 0..1

// Define extensions
Extension: MedicaidProgramType
Id: medicaid-program-type
Title: "Medicaid Program Type"
Description: "The type of Medicaid program."
* ^context.type = #element
* ^context.expression = "InsurancePlan"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidProgramTypeVS (required)
* valueCodeableConcept 1..1

Extension: MedicaidEligibilityCriteria
Id: medicaid-eligibility-criteria
Title: "Medicaid Eligibility Criteria"
Description: "Eligibility criteria for the Medicaid program."
* ^context.type = #element
* ^context.expression = "InsurancePlan"
* extension contains
    criteriaType 1..1 and
    criteriaDescription 1..1
* extension[criteriaType].value[x] only CodeableConcept
* extension[criteriaType].valueCodeableConcept from MedicaidEligibilityCriteriaTypeVS (required)
* extension[criteriaDescription].value[x] only string

Extension: MedicaidEnrollmentProcess
Id: medicaid-enrollment-process
Title: "Medicaid Enrollment Process"
Description: "Information about the enrollment process for the Medicaid program."
* ^context.type = #element
* ^context.expression = "InsurancePlan"
* extension contains
    enrollmentMethod 1..* and
    enrollmentContact 0..* and
    enrollmentDocuments 0..*
* extension[enrollmentMethod].value[x] only CodeableConcept
* extension[enrollmentMethod].valueCodeableConcept from MedicaidEnrollmentMethodVS (required)
* extension[enrollmentContact].value[x] only ContactPoint
* extension[enrollmentDocuments].value[x] only string

// Define value sets and code systems
ValueSet: MedicaidProgramTypeVS
Id: medicaid-program-type-vs
Title: "Medicaid Program Type Value Set"
Description: "Value set for Medicaid program types."
* include codes from system MedicaidProgramTypeCS

CodeSystem: MedicaidProgramTypeCS
Id: medicaid-program-type-cs
Title: "Medicaid Program Type Code System"
Description: "Code system for Medicaid program types."
* #traditional "Traditional Medicaid" "Traditional fee-for-service Medicaid program"
* #managed-care "Managed Care" "Medicaid managed care program"
* #expansion "Expansion" "Medicaid expansion program under the Affordable Care Act"
* #chip "CHIP" "Children's Health Insurance Program"
* #dual-eligible "Dual Eligible" "Program for individuals eligible for both Medicaid and Medicare"
* #waiver-1115 "Section 1115 Waiver" "Medicaid program under a Section 1115 demonstration waiver"
* #waiver-1915b "Section 1915(b) Waiver" "Medicaid program under a Section 1915(b) waiver"
* #waiver-1915c "Section 1915(c) Waiver" "Medicaid program under a Section 1915(c) waiver"
* #ltss "LTSS" "Long-term services and supports program"
* #behavioral-health "Behavioral Health" "Specialized Medicaid program for behavioral health services"

ValueSet: MedicaidEligibilityCriteriaTypeVS
Id: medicaid-eligibility-criteria-type-vs
Title: "Medicaid Eligibility Criteria Type Value Set"
Description: "Value set for Medicaid eligibility criteria types."
* include codes from system MedicaidEligibilityCriteriaTypeCS

CodeSystem: MedicaidEligibilityCriteriaTypeCS
Id: medicaid-eligibility-criteria-type-cs
Title: "Medicaid Eligibility Criteria Type Code System"
Description: "Code system for Medicaid eligibility criteria types."
* #income "Income" "Income-based eligibility criteria"
* #age "Age" "Age-based eligibility criteria"
* #disability "Disability" "Disability-based eligibility criteria"
* #pregnancy "Pregnancy" "Pregnancy-based eligibility criteria"
* #parent-caretaker "Parent/Caretaker" "Eligibility based on being a parent or caretaker"
* #child "Child" "Eligibility based on being a child"
* #foster-care "Foster Care" "Eligibility based on foster care status"
* #former-foster-care "Former Foster Care" "Eligibility based on former foster care status"
* #breast-cervical-cancer "Breast/Cervical Cancer" "Eligibility based on breast or cervical cancer diagnosis"
* #medically-needy "Medically Needy" "Eligibility based on medically needy status"

ValueSet: MedicaidEnrollmentMethodVS
Id: medicaid-enrollment-method-vs
Title: "Medicaid Enrollment Method Value Set"
Description: "Value set for Medicaid enrollment methods."
* include codes from system MedicaidEnrollmentMethodCS

CodeSystem: MedicaidEnrollmentMethodCS
Id: medicaid-enrollment-method-cs
Title: "Medicaid Enrollment Method Code System"
Description: "Code system for Medicaid enrollment methods."
* #online "Online" "Online enrollment through a web portal"
* #paper "Paper" "Paper-based enrollment using forms"
* #phone "Phone" "Enrollment by phone"
* #in-person "In-Person" "In-person enrollment at an office or facility"
* #automatic "Automatic" "Automatic enrollment based on other program participation"
* #presumptive "Presumptive" "Presumptive eligibility enrollment"
