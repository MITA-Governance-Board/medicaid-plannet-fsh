// MedicaidExamples.fsh
// Example instances for Medicaid Provider Directory profiles

// Example 1: Medicaid Practitioner

Instance: MedicaidPractitionerExample1
InstanceOf: MedicaidPractitioner
Title: "Example Medicaid Practitioner"
Description: "Example of a practitioner enrolled in Medicaid"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "1122334455"
* identifier[1].system = "http://example.org/state-medicaid/provider-id"
* identifier[1].value = "MCD123456"
* extension[medicaidProviderIdentifier].valueIdentifier.system = "http://example.org/state-medicaid/provider-id"
* extension[medicaidProviderIdentifier].valueIdentifier.value = "MCD123456"
* active = true
* name.family = "Smith"
* name.given = "John"
* name.given[1] = "A"
* name.prefix = "Dr."
* name.suffix = "MD"
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "john.smith@example.org"
* telecom[1].use = #work
* address.use = #work
* address.type = #both
* address.line = "123 Main St"
* address.line[1] = "Suite 400"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* gender = #male
* qualification[0].identifier.system = "http://example.org/state-medical-license"
* qualification[0].identifier.value = "MD123456"
* qualification[0].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* qualification[0].issuer.display = "State Medical Board"
* qualification[0].period.start = "2010-01-01"
* qualification[0].period.end = "2025-12-31"
* extension[medicaidEnrollmentStatus].valueCodeableConcept = MedicaidEnrollmentStatusCS#active "Active"
* extension[medicaidEnrollmentDate].valueDate = "2015-01-15"
* extension[medicaidProviderType].valueCodeableConcept = MedicaidProviderTypeCS#physician "Physician"

// Example 2: Medicaid Organization

Instance: MedicaidOrganizationExample1
InstanceOf: MedicaidOrganization
Title: "Example Medicaid Organization"
Description: "Example of an organization enrolled in Medicaid"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-organization"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "9988776655"
* identifier[1].system = "http://example.org/state-medicaid/provider-id"
* identifier[1].value = "MCD789012"
* extension[medicaidProviderIdentifier].valueIdentifier.system = "http://example.org/state-medicaid/provider-id"
* extension[medicaidProviderIdentifier].valueIdentifier.value = "MCD789012"
* active = true
* type = MedicaidFacilityTypeCS#clinic "Clinic"
* name = "Anytown Medical Group"
* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "info@anytownmedical.example.org"
* telecom[1].use = #work
* telecom[2].system = #url
* telecom[2].value = "https://www.anytownmedical.example.org"
* telecom[2].use = #work
* address.use = #work
* address.type = #both
* address.line = "456 Health Avenue"
* address.line[1] = "Building B"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* extension[medicaidEnrollmentStatus].valueCodeableConcept = MedicaidEnrollmentStatusCS#active "Active"
* extension[medicaidEnrollmentDate].valueDate = "2012-06-01"
* extension[medicaidOwnershipDisclosure].extension[ownershipType].valueCodeableConcept = MedicaidOwnershipTypeCS#direct "Direct Ownership"
* extension[medicaidOwnershipDisclosure].extension[disclosureDate].valueDate = "2022-01-15"
* extension[medicaidOwnershipDisclosure].extension[owner][0].extension[ownerName].valueString = "Jane Doe"
* extension[medicaidOwnershipDisclosure].extension[owner][0].extension[ownerType].valueCodeableConcept = MedicaidOwnerTypeCS#individual "Individual"
* extension[medicaidOwnershipDisclosure].extension[owner][0].extension[ownershipPercentage].valueDecimal = 51
* extension[medicaidOwnershipDisclosure].extension[owner][0].extension[relationshipType].valueCodeableConcept = MedicaidOwnershipRelationshipTypeCS#owner "Owner"
* extension[medicaidOwnershipDisclosure].extension[owner][1].extension[ownerName].valueString = "Healthcare Investments LLC"
* extension[medicaidOwnershipDisclosure].extension[owner][1].extension[ownerType].valueCodeableConcept = MedicaidOwnerTypeCS#organization "Organization"
* extension[medicaidOwnershipDisclosure].extension[owner][1].extension[ownershipPercentage].valueDecimal = 49
* extension[medicaidOwnershipDisclosure].extension[owner][1].extension[relationshipType].valueCodeableConcept = MedicaidOwnershipRelationshipTypeCS#owner "Owner"

// Example 3: Medicaid Network

Instance: MedicaidNetworkExample1
InstanceOf: MedicaidNetwork
Title: "Example Medicaid Network"
Description: "Example of a Medicaid managed care network"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-network"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* partOf = Reference(ExampleParentOrganization)
* identifier[0].system = "http://example.org/state-medicaid/network-id"
* identifier[0].value = "MCO-NETWORK-001"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationType#ntwk "Network"
* name = "Anytown Medicaid Managed Care Network"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-789-0123"
* contact.telecom[0].use = #work
* contact.telecom[1].system = #url
* contact.telecom[1].value = "https://www.anytownmedicaid.example.org"
* contact.telecom[1].use = #work
* address.use = #work
* address.type = #both
* address.line = "789 Medicaid Plaza"
* address.line[1] = "Suite 300"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* extension[medicaidNetworkType].valueCodeableConcept = MedicaidNetworkTypeCS#managed-care "Managed Care"
* extension[medicaidNetworkAdequacy].extension[adequacyStatus].valueCodeableConcept = MedicaidNetworkAdequacyStatusCS#adequate "Adequate"
* extension[medicaidNetworkAdequacy].extension[lastEvaluationDate].valueDate = "2024-12-15"
* extension[medicaidNetworkAdequacy].extension[providerToEnrolleeRatio][0].extension[providerType].valueCodeableConcept = MedicaidProviderTypeCS#physician "Physician"
* extension[medicaidNetworkAdequacy].extension[providerToEnrolleeRatio][0].extension[ratio].valueRatio.numerator.value = 1
* extension[medicaidNetworkAdequacy].extension[providerToEnrolleeRatio][0].extension[ratio].valueRatio.denominator.value = 1500
* extension[medicaidNetworkAdequacy].extension[providerToEnrolleeRatio][0].extension[requiredRatio].valueRatio.numerator.value = 1
* extension[medicaidNetworkAdequacy].extension[providerToEnrolleeRatio][0].extension[requiredRatio].valueRatio.denominator.value = 2000
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[providerType].valueCodeableConcept = MedicaidProviderTypeCS#physician "Physician"
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[maxTime].valueQuantity.value = 30
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[maxTime].valueQuantity.system = "http://unitsofmeasure.org"
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[maxTime].valueQuantity.code = #min
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[maxDistance].valueQuantity.value = 15
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[maxDistance].valueQuantity.system = "http://unitsofmeasure.org"
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[maxDistance].valueQuantity.code = #mi
* extension[medicaidNetworkAdequacy].extension[timeDistanceStandard][0].extension[percentMet].valueDecimal = 95.2
* extension[medicaidServiceArea][0].valueReference = Reference(MedicaidServiceAreaExample1)

// Example 4: Medicaid Service Area

Instance: MedicaidServiceAreaExample1
InstanceOf: Location
Title: "Example Medicaid Service Area"
Description: "Example of a Medicaid service area"
Usage: #example
* status = #active
* name = "Anytown County Service Area"
* description = "Medicaid service area covering Anytown County"
* type = http://terminology.hl7.org/CodeSystem/location-physical-type#jdn "Jurisdiction"
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#jdn "Jurisdiction"
* position.longitude = -73.9712
* position.latitude = 40.7831

// Example 5: Medicaid Practitioner Role

Instance: MedicaidPractitionerRoleExample1
InstanceOf: MedicaidPractitionerRole
Title: "Example Medicaid Practitioner Role"
Description: "Example of a practitioner role in a Medicaid organization"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner-role"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* active = true
* practitioner = Reference(MedicaidPractitionerExample1)
* organization = Reference(MedicaidOrganizationExample1)
* code = http://nucc.org/provider-taxonomy#207Q00000X "Family Medicine Physician"
* specialty = http://nucc.org/provider-taxonomy#207Q00000X "Family Medicine"
* location = Reference(MedicaidLocationExample1)
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #work
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[0].daysOfWeek[1] = #tue
* availableTime[0].daysOfWeek[2] = #wed
* availableTime[0].daysOfWeek[3] = #thu
* availableTime[0].daysOfWeek[4] = #fri
* availableTime[0].availableStartTime = "09:00:00"
* availableTime[0].availableEndTime = "17:00:00"
* notAvailable[0].description = "Dr. Smith is not available on public holidays"
* notAvailable[0].during.start = "2023-12-25"
* notAvailable[0].during.end = "2023-12-26"
* availabilityExceptions = "Dr. Smith may be unavailable during scheduled hospital rounds."
* extension[0].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/newpatients"
* extension[0].extension[0].url = "acceptingPatients"
* extension[0].extension[0].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AcceptingPatientsCS#accepting "Accepting"
* extension[0].extension[1].url = "fromNetwork"
* extension[0].extension[1].valueReference = Reference(MedicaidNetworkExample1)

// Example 6: Medicaid Location

Instance: MedicaidLocationExample1
InstanceOf: MedicaidLocation
Title: "Example Medicaid Provider Location"
Description: "Example of a location where Medicaid services are provided"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-location"
* meta.lastUpdated = "2025-05-02T12:00:00Z"
* status = #active
* name = "Anytown Medical Group - Main Office"
* description = "Main office of Anytown Medical Group"
* type = http://terminology.hl7.org/CodeSystem/service-type#17 "Pharmacy"
* telecom[0].system = #phone
* telecom[0].value = "555-987-6543"
* telecom[0].use = #work
* address.use = #work
* address.type = #both
* address.line = "456 Health Avenue"
* address.line[1] = "Building B"
* address.city = "Anytown"
* address.state = "NY"
* address.postalCode = "12345"
* address.country = "US"
* position.longitude = -73.9712
* position.latitude = 40.7831
* managingOrganization = Reference(MedicaidOrganizationExample1)
* hoursOfOperation[0].daysOfWeek[0] = #mon
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4] = #fri
* hoursOfOperation[0].openingTime = "09:00:00"
* hoursOfOperation[0].closingTime = "17:00:00"
* hoursOfOperation[1].daysOfWeek[0] = #sat
* hoursOfOperation[1].openingTime = "09:00:00"
* hoursOfOperation[1].closingTime = "12:00:00"
