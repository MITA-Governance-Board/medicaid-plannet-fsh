// ParentOrganizationExample.fsh
// Example parent organization for the Medicaid Network

Instance: ExampleParentOrganization
InstanceOf: Organization
Title: "Example Parent Organization"
Description: "Example of a parent organization for a Medicaid network"
Usage: #example
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "5544332211"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "State Medicaid Agency"
* telecom[0].system = #phone
* telecom[0].value = "555-111-2222"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "info@state-medicaid.example.org"
* telecom[1].use = #work
* telecom[2].system = #url
* telecom[2].value = "https://www.state-medicaid.example.org"
* telecom[2].use = #work
* address.use = #work
* address.type = #both
* address.line = "100 State Capitol"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
