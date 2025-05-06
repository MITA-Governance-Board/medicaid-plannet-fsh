// MedicaidSearchParameters.fsh
// Search parameters for Medicaid provider directory resources

// Search parameter for Medicaid Provider Identifier
Instance: medicaid-provider-id
InstanceOf: SearchParameter
Title: "Medicaid Provider Identifier Search Parameter"
Description: "Search parameter for Medicaid Provider Identifier"
Usage: #definition
* status = #active
* description = "Search parameter for Medicaid Provider Identifier"
* version = "1.0.0"
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* url = "http://hl7.org/fhir/us/medicaid-plannet/SearchParameter/medicaid-provider-id"
* name = "MedicaidProviderId"
* code = #medicaid-provider-id
* base[0] = #Practitioner
* base[+] = #Organization
* type = #token
* expression = "Practitioner.identifier.where(extension.where(url='http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-provider-identifier').exists()) | Organization.identifier.where(extension.where(url='http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-provider-identifier').exists())"
* multipleOr = true
* multipleAnd = false

// Search parameter for Medicaid Enrollment Status
Instance: medicaid-enrollment-status
InstanceOf: SearchParameter
Title: "Medicaid Enrollment Status Search Parameter"
Description: "Search parameter for Medicaid Enrollment Status"
Usage: #definition
* status = #active
* description = "Search parameter for Medicaid Enrollment Status"
* version = "1.0.0"
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* url = "http://hl7.org/fhir/us/medicaid-plannet/SearchParameter/medicaid-enrollment-status"
* name = "MedicaidEnrollmentStatus"
* code = #medicaid-enrollment-status
* base[0] = #Practitioner
* base[+] = #Organization
* type = #token
* expression = "Practitioner.extension.where(url='http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-status').value | Organization.extension.where(url='http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-status').value"
* multipleOr = true
* multipleAnd = false

// Search parameter for Medicaid Provider Type
Instance: medicaid-provider-type
InstanceOf: SearchParameter
Title: "Medicaid Provider Type Search Parameter"
Description: "Search parameter for Medicaid Provider Type"
Usage: #definition
* status = #active
* description = "Search parameter for Medicaid Provider Type"
* version = "1.0.0"
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* url = "http://hl7.org/fhir/us/medicaid-plannet/SearchParameter/medicaid-provider-type"
* name = "MedicaidProviderType"
* code = #medicaid-provider-type
* base = #Practitioner
* type = #token
* expression = "Practitioner.extension.where(url='http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-provider-type').value"
* multipleOr = true
* multipleAnd = false

// Search parameter for Medicaid Network Type
Instance: medicaid-network-type
InstanceOf: SearchParameter
Title: "Medicaid Network Type Search Parameter"
Description: "Search parameter for Medicaid Network Type"
Usage: #definition
* status = #active
* description = "Search parameter for Medicaid Network Type"
* version = "1.0.0"
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* url = "http://hl7.org/fhir/us/medicaid-plannet/SearchParameter/medicaid-network-type"
* name = "MedicaidNetworkType"
* code = #medicaid-network-type
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-network-type').value"
* multipleOr = true
* multipleAnd = false

// Search parameter for Medicaid Facility Type
Instance: medicaid-facility-type
InstanceOf: SearchParameter
Title: "Medicaid Facility Type Search Parameter"
Description: "Search parameter for Medicaid Facility Type"
Usage: #definition
* status = #active
* description = "Search parameter for Medicaid Facility Type"
* version = "1.0.0"
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* url = "http://hl7.org/fhir/us/medicaid-plannet/SearchParameter/medicaid-facility-type"
* name = "MedicaidFacilityType"
* code = #medicaid-facility-type
* base = #Organization
* type = #token
* expression = "Organization.type"
* multipleOr = true
* multipleAnd = false

// Search parameter for accepting new patients
Instance: accepting-new-patients
InstanceOf: SearchParameter
Title: "Accepting New Patients Search Parameter"
Description: "Search parameter for providers accepting new patients"
Usage: #definition
* status = #active
* description = "Search parameter for providers accepting new patients"
* version = "1.0.0"
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* url = "http://hl7.org/fhir/us/medicaid-plannet/SearchParameter/accepting-new-patients"
* name = "AcceptingNewPatients"
* code = #accepting-new-patients
* base = #PractitionerRole
* type = #token
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/newpatients').value"
* multipleOr = false
* multipleAnd = false
