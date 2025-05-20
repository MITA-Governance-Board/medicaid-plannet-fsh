Instance: medicaid-to-nucc-provider-type-map
InstanceOf: ConceptMap
Title: "Medicaid to NUCC Provider Type Concept Map"
Description: "Mapping between Medicaid provider types and NUCC provider taxonomy codes.

This mapping enables interoperability between Medicaid-specific provider classifications and nationally recognized taxonomy codes used in claims processing and other healthcare transactions.

**Rationale**:
- NUCC Provider Taxonomy Codes are a nationally recognized standard
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

* sourceCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs"
* targetCanonical = "http://nucc.org/provider-taxonomy"

* group[+].source = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs"
* group[=].target = "http://nucc.org/provider-taxonomy"
* group[=].element[+].code = #physician
* group[=].element[=].target[+].code = #208D00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "General Practice"

* group[=].element[+].code = #nurse-practitioner
* group[=].element[=].target[+].code = #363L00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Nurse Practitioner"

* group[=].element[+].code = #physician-assistant
* group[=].element[=].target[+].code = #363A00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Physician Assistant"

* group[=].element[+].code = #dentist
* group[=].element[=].target[+].code = #122300000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Dentist"

* group[=].element[+].code = #therapist
* group[=].element[=].target[+].code = #225X00000X
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Occupational Therapist"
* group[=].element[=].target[+].code = #2251X0000X
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Physical Therapist"

* group[=].element[+].code = #pharmacy
* group[=].element[=].target[+].code = #261QP3300X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Pharmacy"

* group[=].element[+].code = #laboratory
* group[=].element[=].target[+].code = #291U00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Clinical Medical Laboratory"

* group[=].element[+].code = #hospital
* group[=].element[=].target[+].code = #282N00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "General Acute Care Hospital"

* group[=].element[+].code = #clinic
* group[=].element[=].target[+].code = #261Q00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Clinic/Center"

* group[=].element[+].code = #home-health
* group[=].element[=].target[+].code = #251E00000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Home Health Agency"

* group[=].element[+].code = #nursing-facility
* group[=].element[=].target[+].code = #314000000X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Skilled Nursing Facility"

* group[=].element[+].code = #behavioral-health
* group[=].element[=].target[+].code = #261QM0850X
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Mental Health Clinic/Center"
