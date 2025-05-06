// MedicaidEndpointExample.fsh
// Example instance for Medicaid Endpoint

Instance: MedicaidEndpointExample1
InstanceOf: MedicaidEndpoint
Title: "Example Medicaid Endpoint"
Description: "Example of an electronic service endpoint for a Medicaid organization"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-endpoint"
* meta.lastUpdated = "2025-05-06T12:00:00Z"
* status = #active
* connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-rest "HL7 FHIR REST"
* name = "Anytown Medical Group FHIR API"
* managingOrganization = Reference(MedicaidOrganizationExample1)
* contact.system = #email
* contact.value = "api-support@anytownmedical.example.org"
* contact.use = #work
* period.start = "2024-01-01"
* payloadType = http://terminology.hl7.org/CodeSystem/endpoint-payload-type#any "Any"
* payloadMimeType = #application/fhir+json
* address = "https://api.anytownmedical.example.org/fhir/r4"
* extension[medicaidElectronicTransactionCapability][0].extension[transactionType].valueCodeableConcept = MedicaidElectronicTransactionTypeCS#eligibility-verification "Eligibility Verification"
* extension[medicaidElectronicTransactionCapability][0].extension[version].valueString = "1.0"
* extension[medicaidElectronicTransactionCapability][0].extension[supportedFormat][0].valueString = "application/fhir+json"
* extension[medicaidElectronicTransactionCapability][0].extension[supportedFormat][1].valueString = "application/fhir+xml"
* extension[medicaidElectronicTransactionCapability][1].extension[transactionType].valueCodeableConcept = MedicaidElectronicTransactionTypeCS#claim-submission "Claim Submission"
* extension[medicaidElectronicTransactionCapability][1].extension[version].valueString = "1.0"
* extension[medicaidElectronicTransactionCapability][1].extension[supportedFormat][0].valueString = "application/fhir+json"
* extension[medicaidSecureMessagingCapability].extension[secureMessagingEnabled].valueBoolean = true
* extension[medicaidSecureMessagingCapability].extension[securityProtocol][0].valueString = "TLS 1.2+"
* extension[medicaidSecureMessagingCapability].extension[securityProtocol][1].valueString = "OAuth 2.0"
* extension[medicaidConnectionRequirement].extension[registrationRequired].valueBoolean = true
* extension[medicaidConnectionRequirement].extension[registrationProcess].valueString = "To register for API access, please contact our API support team at api-support@anytownmedical.example.org or visit https://api.anytownmedical.example.org/register"
* extension[medicaidConnectionRequirement].extension[technicalContact].valueContactPoint.system = #email
* extension[medicaidConnectionRequirement].extension[technicalContact].valueContactPoint.value = "api-support@anytownmedical.example.org"
* extension[medicaidConnectionRequirement].extension[technicalContact].valueContactPoint.use = #work
