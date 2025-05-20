Instance: medicaid-to-cms-facility-type-map
InstanceOf: ConceptMap
Title: "Medicaid to CMS Facility Type Concept Map"
Description: "Mapping between Medicaid facility types and CMS Place of Service codes.

This mapping enables interoperability between Medicaid-specific facility classifications and nationally recognized place of service codes used by Medicare and other healthcare entities.

**Rationale**:
- CMS Place of Service Codes are a nationally recognized standard
- MITA Technical Architecture requires interoperability with other healthcare systems"
Usage: #definition
* version = "1.0.0"
* status = #draft
* date = "2025-05-06"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"

* sourceCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-facility-type-cs"
* targetCanonical = "https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set"

* group[+].source = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-facility-type-cs"
* group[=].target = "https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set"
* group[=].element[+].code = #hospital
* group[=].element[=].target[+].code = #21
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Inpatient Hospital"

* group[=].element[+].code = #clinic
* group[=].element[=].target[+].code = #11
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Office"

* group[=].element[+].code = #group-practice
* group[=].element[=].target[+].code = #11
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Office"

* group[=].element[+].code = #pharmacy
* group[=].element[=].target[+].code = #01
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Pharmacy"

* group[=].element[+].code = #laboratory
* group[=].element[=].target[+].code = #81
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Independent Laboratory"

* group[=].element[+].code = #imaging-center
* group[=].element[=].target[+].code = #24
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Ambulatory Surgical Center"

* group[=].element[+].code = #home-health-agency
* group[=].element[=].target[+].code = #12
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Home"

* group[=].element[+].code = #nursing-facility
* group[=].element[=].target[+].code = #31
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Skilled Nursing Facility"

* group[=].element[+].code = #behavioral-health
* group[=].element[=].target[+].code = #51
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Inpatient Psychiatric Facility"
* group[=].element[=].target[+].code = #53
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Community Mental Health Center"

* group[=].element[+].code = #ambulatory-surgical-center
* group[=].element[=].target[+].code = #24
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Ambulatory Surgical Center"

* group[=].element[+].code = #federally-qualified-health-center
* group[=].element[=].target[+].code = #50
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Federally Qualified Health Center"

* group[=].element[+].code = #rural-health-clinic
* group[=].element[=].target[+].code = #72
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Rural Health Clinic"

* group[=].element[+].code = #community-mental-health-center
* group[=].element[=].target[+].code = #53
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Community Mental Health Center"
