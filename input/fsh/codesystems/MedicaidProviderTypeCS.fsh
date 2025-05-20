CodeSystem: MedicaidProviderTypeCS
Id: medicaid-provider-type-cs
Title: "Medicaid Provider Type Code System"
Description: "Code system for Medicaid provider types.

This code system provides Medicaid-specific codes for categorizing provider types. Medicaid programs often use provider type classifications that differ from standard industry codes. This code system allows for state-specific provider categorization.

**Rationale**:
- MITA Information Architecture requires classification of providers by type
- The concept map MedicaidToNUCCProviderTypeMap demonstrates the need for Medicaid-specific provider type codes"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #physician "Physician" "A doctor of medicine or osteopathy."
* #nurse-practitioner "Nurse Practitioner" "A registered nurse with advanced education and clinical training."
* #physician-assistant "Physician Assistant" "A healthcare professional who practices medicine under the supervision of a physician."
* #dentist "Dentist" "A healthcare professional who specializes in dentistry."
* #therapist "Therapist" "A healthcare professional who provides therapy services."
* #pharmacy "Pharmacy" "A facility where medicines are prepared and dispensed."
* #laboratory "Laboratory" "A facility that performs diagnostic tests."
* #hospital "Hospital" "A healthcare institution providing patient treatment with specialized staff and equipment."
* #clinic "Clinic" "A healthcare facility that is primarily devoted to the care of outpatients."
* #home-health "Home Health" "A provider of healthcare services delivered at the patient's home."
* #nursing-facility "Nursing Facility" "A facility that provides nursing care and related services."
* #behavioral-health "Behavioral Health" "A provider of mental health and substance abuse services."
* #other "Other" "Other type of provider not listed."
