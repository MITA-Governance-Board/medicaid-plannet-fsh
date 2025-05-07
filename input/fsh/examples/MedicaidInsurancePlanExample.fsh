// MedicaidInsurancePlanExample.fsh
// Example instance for Medicaid Insurance Plan

Instance: MedicaidInsurancePlanExample1
InstanceOf: MedicaidInsurancePlan
Title: "Example Medicaid Insurance Plan"
Description: "Example of a Medicaid managed care plan"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-insurance-plan"
* meta.lastUpdated = "2025-05-06T12:00:00Z"
* identifier[0].system = "http://example.org/state-medicaid/plan-id"
* identifier[0].value = "MEDICAID-MCO-001"
* status = #active
* type = MedicaidProgramTypeCS#managed-care "Managed Care"
* name = "Anytown Medicaid Managed Care Plan"
* alias = "AMMCP"
* period.start = "2025-01-01"
* period.end = "2025-12-31"
* ownedBy = Reference(ExampleParentOrganization)
* administeredBy = Reference(MedicaidOrganizationExample1)
* coverageArea = Reference(MedicaidServiceAreaExample1)
* contact.name.text = "Anytown Medicaid Member Services"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "1-800-555-1234"
* contact.telecom[0].use = #work
* contact.telecom[1].system = #email
* contact.telecom[1].value = "memberservices@anytownmedicaid.example.org"
* contact.telecom[1].use = #work
* contact.telecom[2].system = #url
* contact.telecom[2].value = "https://www.anytownmedicaid.example.org/members"
* contact.telecom[2].use = #work
* endpoint = Reference(MedicaidEndpointExample1)
* network = Reference(MedicaidNetworkExample1)
* coverage.type = http://terminology.hl7.org/CodeSystem/coverage-type#medical "Medical Coverage"
* coverage.benefit[0].type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#medical "Medical"
* coverage.benefit[0].requirement = "Coverage for medically necessary services as defined by state Medicaid guidelines. Some services may require prior authorization."
* coverage.benefit[1].type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#drug "Drug"
* coverage.benefit[1].requirement = "Coverage for medications on the Medicaid formulary. Some medications may require prior authorization or step therapy."
* coverage.benefit[2].type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#dental "Dental"
* coverage.benefit[2].requirement = "Coverage for preventive and basic dental services. Limited to specific services as defined by state Medicaid guidelines."
* coverage.benefit[3].type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#vision "Vision"
* coverage.benefit[3].requirement = "Coverage for basic vision services. Limited to one eye exam per year and one pair of glasses every two years."
* plan.type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#managed-care "Managed Care"
* plan.specificCost[0].category = http://terminology.hl7.org/CodeSystem/insurance-plan-cost-category#copay "Copay"
* plan.specificCost[0].benefit[0].type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#medical "Medical"
* plan.specificCost[0].benefit[0].cost[0].type = http://terminology.hl7.org/CodeSystem/insurance-plan-cost-type#copay "Copay"
* plan.specificCost[0].benefit[0].cost[0].applicability = http://hl7.org/fhir/benefit-cost-applicability#in-network "In Network"
* plan.specificCost[0].benefit[0].cost[0].qualifiers = http://terminology.hl7.org/CodeSystem/insurance-plan-cost-type-qualifier#primary-care "Primary Care"
* plan.specificCost[0].benefit[0].cost[0].value.value = 0
* plan.specificCost[0].benefit[0].cost[0].value.code = #USD
* extension[medicaidProgramType].valueCodeableConcept = MedicaidProgramTypeCS#managed-care "Managed Care"
* extension[medicaidEligibilityCriteria][0].extension[criteriaType].valueCodeableConcept = MedicaidEligibilityCriteriaTypeCS#income "Income"
* extension[medicaidEligibilityCriteria][0].extension[criteriaDescription].valueString = "Income at or below 138% of the Federal Poverty Level"
* extension[medicaidEligibilityCriteria][1].extension[criteriaType].valueCodeableConcept = MedicaidEligibilityCriteriaTypeCS#age "Age"
* extension[medicaidEligibilityCriteria][1].extension[criteriaDescription].valueString = "Ages 0-64"
* extension[medicaidEligibilityCriteria][2].extension[criteriaType].valueCodeableConcept = MedicaidEligibilityCriteriaTypeCS#parent-caretaker "Parent/Caretaker"
* extension[medicaidEligibilityCriteria][2].extension[criteriaDescription].valueString = "Parents and caretaker relatives of dependent children"
* extension[medicaidEnrollmentProcess].extension[enrollmentMethod][0].valueCodeableConcept = MedicaidEnrollmentMethodCS#online "Online"
* extension[medicaidEnrollmentProcess].extension[enrollmentMethod][1].valueCodeableConcept = MedicaidEnrollmentMethodCS#phone "Phone"
* extension[medicaidEnrollmentProcess].extension[enrollmentMethod][2].valueCodeableConcept = MedicaidEnrollmentMethodCS#in-person "In-Person"
* extension[medicaidEnrollmentProcess].extension[enrollmentContact][0].valueContactPoint.system = #phone
* extension[medicaidEnrollmentProcess].extension[enrollmentContact][0].valueContactPoint.value = "1-800-555-5678"
* extension[medicaidEnrollmentProcess].extension[enrollmentContact][0].valueContactPoint.use = #work
* extension[medicaidEnrollmentProcess].extension[enrollmentContact][1].valueContactPoint.system = #url
* extension[medicaidEnrollmentProcess].extension[enrollmentContact][1].valueContactPoint.value = "https://www.anytownmedicaid.example.org/enroll"
* extension[medicaidEnrollmentProcess].extension[enrollmentContact][1].valueContactPoint.use = #work
* extension[medicaidEnrollmentProcess].extension[enrollmentDocuments][0].valueString = "Proof of identity (e.g., driver's license, birth certificate)"
* extension[medicaidEnrollmentProcess].extension[enrollmentDocuments][1].valueString = "Proof of income (e.g., pay stubs, tax returns)"
* extension[medicaidEnrollmentProcess].extension[enrollmentDocuments][2].valueString = "Proof of residency (e.g., utility bill, lease agreement)"
* extension[medicaidEnrollmentProcess].extension[enrollmentDocuments][3].valueString = "Social Security Number"
