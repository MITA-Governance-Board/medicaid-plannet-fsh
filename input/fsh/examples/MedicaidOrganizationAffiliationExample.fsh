// MedicaidOrganizationAffiliationExample.fsh
// Example instance for Medicaid Organization Affiliation

Instance: MedicaidOrganizationAffiliationExample1
InstanceOf: MedicaidOrganizationAffiliation
Title: "Example Medicaid Organization Affiliation"
Description: "Example of an affiliation between a Medicaid organization and a network"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-organization-affiliation"
* meta.lastUpdated = "2025-05-06T12:00:00Z"
* identifier[0].system = "http://example.org/state-medicaid/affiliation-id"
* identifier[0].value = "AFFIL-12345"
* active = true
* period.start = "2025-01-01"
* period.end = "2025-12-31"
* organization = Reference(ExampleParentOrganization)
* participatingOrganization = Reference(MedicaidOrganizationExample1)
* network = Reference(MedicaidNetworkExample1)
* code = http://terminology.hl7.org/CodeSystem/organization-role#provider "Provider"
* specialty = http://nucc.org/provider-taxonomy#261QP2300X "Primary Care Clinic/Center"
* location = Reference(MedicaidLocationExample1)
* healthcareService = Reference(MedicaidHealthcareServiceExample1)
* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "contracts@anytownmedical.example.org"
* telecom[1].use = #work
* extension[medicaidContractType].valueCodeableConcept = MedicaidContractTypeCS#mco "MCO"
* extension[medicaidContractStatus].valueCodeableConcept = MedicaidContractStatusCS#active "Active"
* extension[medicaidServiceAuthorizationRequirement].extension[authorizationRequired].valueBoolean = true
* extension[medicaidServiceAuthorizationRequirement].extension[authorizationProcess].valueString = "Prior authorization is required for certain services. Please submit authorization requests through the provider portal or by calling the authorization department at 1-800-555-9876."
* extension[medicaidServiceAuthorizationRequirement].extension[authorizationContact].valueContactPoint.system = #phone
* extension[medicaidServiceAuthorizationRequirement].extension[authorizationContact].valueContactPoint.value = "1-800-555-9876"
* extension[medicaidServiceAuthorizationRequirement].extension[authorizationContact].valueContactPoint.use = #work
* extension[medicaidPaymentArrangement].extension[paymentType].valueCodeableConcept = MedicaidPaymentTypeCS#capitation "Capitation"
* extension[medicaidPaymentArrangement].extension[paymentDetails].valueString = "Monthly capitation payment based on enrolled members, with risk adjustment based on member demographics and clinical risk factors. Quality incentive payments available for meeting performance metrics."
