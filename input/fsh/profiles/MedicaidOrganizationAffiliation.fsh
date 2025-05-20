// MedicaidOrganizationAffiliation.fsh
// Profile definition for a Medicaid Organization Affiliation

Profile: MedicaidOrganizationAffiliation
Parent: PlannetOrganizationAffiliation
Id: medicaid-organization-affiliation
Title: "Medicaid Organization Affiliation"
Description: "Profile for an organization affiliation in a Medicaid provider directory, incorporating elements from the Da Vinci Plan-Net and FAST NDH Implementation Guides."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-06"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require organization reference
* organization 1..1
* organization only Reference(MedicaidOrganization)

// Require participating organization reference
* participatingOrganization 1..1
* participatingOrganization only Reference(MedicaidOrganization)

* network only Reference(MedicaidNetwork)

// Require code
* code 1..*

* location only Reference(MedicaidLocation)

* healthcareService only Reference(MedicaidHealthcareService)

// Require telecom
* telecom 0..*

// Require period start
* period.start 1..1

// Add extensions for Medicaid-specific information
* extension contains
    MedicaidContractType named medicaidContractType 0..1 and
    MedicaidContractStatus named medicaidContractStatus 0..1 and
    MedicaidServiceAuthorizationRequirement named medicaidServiceAuthorizationRequirement 0..1 and
    MedicaidPaymentArrangement named medicaidPaymentArrangement 0..1

// Define extensions
Extension: MedicaidContractType
Id: medicaid-contract-type
Title: "Medicaid Contract Type"
Description: "The type of contract between the organizations."
* ^context.type = #element
* ^context.expression = "OrganizationAffiliation"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidContractTypeVS (required)
* valueCodeableConcept 1..1

Extension: MedicaidContractStatus
Id: medicaid-contract-status
Title: "Medicaid Contract Status"
Description: "The status of the contract between the organizations."
* ^context.type = #element
* ^context.expression = "OrganizationAffiliation"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidContractStatusVS (required)
* valueCodeableConcept 1..1

Extension: MedicaidServiceAuthorizationRequirement
Id: medicaid-service-authorization-requirement
Title: "Medicaid Service Authorization Requirement"
Description: "Requirements for service authorization under this affiliation."
* ^context.type = #element
* ^context.expression = "OrganizationAffiliation"
* extension contains
    authorizationRequired 1..1 and
    authorizationProcess 0..1 and
    authorizationContact 0..1
* extension[authorizationRequired].value[x] only boolean
* extension[authorizationProcess].value[x] only string
* extension[authorizationContact].value[x] only ContactPoint

Extension: MedicaidPaymentArrangement
Id: medicaid-payment-arrangement
Title: "Medicaid Payment Arrangement"
Description: "Payment arrangement information for this affiliation."
* ^context.type = #element
* ^context.expression = "OrganizationAffiliation"
* extension contains
    paymentType 1..1 and
    paymentDetails 0..1
* extension[paymentType].value[x] only CodeableConcept
* extension[paymentType].valueCodeableConcept from MedicaidPaymentTypeVS (required)
* extension[paymentDetails].value[x] only string

// Define value sets and code systems
ValueSet: MedicaidContractTypeVS
Id: medicaid-contract-type-vs
Title: "Medicaid Contract Type Value Set"
Description: "Value set for Medicaid contract types."
* include codes from system MedicaidContractTypeCS

CodeSystem: MedicaidContractTypeCS
Id: medicaid-contract-type-cs
Title: "Medicaid Contract Type Code System"
Description: "Code system for Medicaid contract types."
* #primary "Primary" "Primary contract"
* #secondary "Secondary" "Secondary contract"
* #tertiary "Tertiary" "Tertiary contract"
* #mco "MCO" "Managed Care Organization contract"
* #pccm "PCCM" "Primary Care Case Management contract"
* #pihp "PIHP" "Prepaid Inpatient Health Plan contract"
* #pahp "PAHP" "Prepaid Ambulatory Health Plan contract"
* #fee-for-service "Fee-for-Service" "Fee-for-service contract"
* #value-based "Value-Based" "Value-based payment contract"
* #risk-based "Risk-Based" "Risk-based contract"

ValueSet: MedicaidContractStatusVS
Id: medicaid-contract-status-vs
Title: "Medicaid Contract Status Value Set"
Description: "Value set for Medicaid contract statuses."
* include codes from system MedicaidContractStatusCS

CodeSystem: MedicaidContractStatusCS
Id: medicaid-contract-status-cs
Title: "Medicaid Contract Status Code System"
Description: "Code system for Medicaid contract statuses."
* #active "Active" "Active contract"
* #pending "Pending" "Pending contract"
* #terminated "Terminated" "Terminated contract"
* #suspended "Suspended" "Suspended contract"
* #renewal "Renewal" "Contract up for renewal"
* #non-renewal "Non-Renewal" "Contract not being renewed"

ValueSet: MedicaidPaymentTypeVS
Id: medicaid-payment-type-vs
Title: "Medicaid Payment Type Value Set"
Description: "Value set for Medicaid payment types."
* include codes from system MedicaidPaymentTypeCS

CodeSystem: MedicaidPaymentTypeCS
Id: medicaid-payment-type-cs
Title: "Medicaid Payment Type Code System"
Description: "Code system for Medicaid payment types."
* #fee-for-service "Fee-for-Service" "Payment based on fee-for-service"
* #capitation "Capitation" "Payment based on capitation"
* #bundled "Bundled" "Payment based on bundled payments"
* #case-rate "Case Rate" "Payment based on case rates"
* #per-diem "Per Diem" "Payment based on per diem rates"
* #drg "DRG" "Payment based on diagnosis-related groups"
* #shared-savings "Shared Savings" "Payment based on shared savings"
* #pay-for-performance "Pay for Performance" "Payment based on performance metrics"
* #value-based "Value-Based" "Payment based on value-based arrangements"
* #global-budget "Global Budget" "Payment based on global budgets"
