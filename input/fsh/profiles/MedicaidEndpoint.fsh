// MedicaidEndpoint.fsh
// Profile definition for a Medicaid Endpoint

Profile: MedicaidEndpoint
Parent: PlannetEndpoint
Id: medicaid-endpoint
Title: "Medicaid Endpoint"
Description: "Profile for an electronic service endpoint in a Medicaid provider directory, incorporating elements from the Da Vinci Plan-Net and FAST NDH Implementation Guides."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-06"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require managing organization
* managingOrganization only Reference(MedicaidOrganization)

// Add extensions for Medicaid-specific information
* extension contains
    MedicaidElectronicTransactionCapability named medicaidElectronicTransactionCapability 0..* and
    MedicaidSecureMessagingCapability named medicaidSecureMessagingCapability 0..1 and
    MedicaidConnectionRequirement named medicaidConnectionRequirement 0..1

// Define extensions
Extension: MedicaidElectronicTransactionCapability
Id: medicaid-electronic-transaction-capability
Title: "Medicaid Electronic Transaction Capability"
Description: "Electronic transaction capabilities relevant to Medicaid."
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
    transactionType 1..1 and
    version 1..1 and
    supportedFormat 1..*
* extension[transactionType].value[x] only CodeableConcept
* extension[transactionType].valueCodeableConcept from MedicaidElectronicTransactionTypeVS (required)
* extension[version].value[x] only string
* extension[supportedFormat].value[x] only string

Extension: MedicaidSecureMessagingCapability
Id: medicaid-secure-messaging-capability
Title: "Medicaid Secure Messaging Capability"
Description: "Secure messaging capabilities for Medicaid communications."
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
    secureMessagingEnabled 1..1 and
    securityProtocol 0..*
* extension[secureMessagingEnabled].value[x] only boolean
* extension[securityProtocol].value[x] only string

Extension: MedicaidConnectionRequirement
Id: medicaid-connection-requirement
Title: "Medicaid Connection Requirement"
Description: "Requirements for connecting to the endpoint."
* ^context.type = #element
* ^context.expression = "Endpoint"
* extension contains
    registrationRequired 1..1 and
    registrationProcess 0..1 and
    technicalContact 0..1
* extension[registrationRequired].value[x] only boolean
* extension[registrationProcess].value[x] only string
* extension[technicalContact].value[x] only ContactPoint

// Define value set for electronic transaction types
ValueSet: MedicaidElectronicTransactionTypeVS
Id: medicaid-electronic-transaction-type-vs
Title: "Medicaid Electronic Transaction Type Value Set"
Description: "Value set for Medicaid electronic transaction types."
* include codes from system MedicaidElectronicTransactionTypeCS

// Define code system for electronic transaction types
CodeSystem: MedicaidElectronicTransactionTypeCS
Id: medicaid-electronic-transaction-type-cs
Title: "Medicaid Electronic Transaction Type Code System"
Description: "Code system for Medicaid electronic transaction types."
* #eligibility-verification "Eligibility Verification" "Verification of Medicaid eligibility"
* #claim-submission "Claim Submission" "Submission of Medicaid claims"
* #claim-status-inquiry "Claim Status Inquiry" "Inquiry about Medicaid claim status"
* #prior-authorization "Prior Authorization" "Request for Medicaid prior authorization"
* #referral "Referral" "Medicaid referral transaction"
* #remittance-advice "Remittance Advice" "Medicaid remittance advice transaction"
* #enrollment "Enrollment" "Medicaid enrollment transaction"
* #coordination-of-benefits "Coordination of Benefits" "Medicaid coordination of benefits transaction"
* #electronic-health-record "Electronic Health Record" "Electronic health record exchange"
* #secure-messaging "Secure Messaging" "Secure messaging for Medicaid communications"
