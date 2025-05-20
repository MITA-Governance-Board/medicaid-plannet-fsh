CodeSystem: MedicaidFacilityTypeCS
Id: medicaid-facility-type-cs
Title: "Medicaid Facility Type Code System"
Description: "Code system for Medicaid facility types.

This code system provides Medicaid-specific codes for categorizing facility types. Medicaid programs may use facility type classifications that differ from standard industry codes. This code system allows for state-specific facility categorization.

**Rationale**:
- MITA Information Architecture requires classification of facilities by type
- The concept map MedicaidToCMSFacilityTypeMap demonstrates the need for Medicaid-specific facility type codes"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #hospital "Hospital" "A healthcare institution providing patient treatment with specialized staff and equipment."
* #clinic "Clinic" "A healthcare facility that is primarily devoted to the care of outpatients."
* #group-practice "Group Practice" "A group of healthcare providers who work together and share resources."
* #pharmacy "Pharmacy" "A facility where medicines are prepared and dispensed."
* #laboratory "Laboratory" "A facility that performs diagnostic tests."
* #imaging-center "Imaging Center" "A facility that provides diagnostic imaging services."
* #home-health-agency "Home Health Agency" "An organization that provides healthcare services in the patient's home."
* #nursing-facility "Nursing Facility" "A facility that provides nursing care and related services."
* #behavioral-health "Behavioral Health" "A facility that provides mental health and substance abuse services."
* #ambulatory-surgical-center "Ambulatory Surgical Center" "A facility that provides same-day surgical care."
* #federally-qualified-health-center "Federally Qualified Health Center" "A community-based healthcare provider that receives federal funds to provide primary care services in underserved areas."
* #rural-health-clinic "Rural Health Clinic" "A clinic located in a rural, medically underserved area."
* #community-mental-health-center "Community Mental Health Center" "A facility that provides mental health services to a defined community."
* #other "Other" "Other type of facility not listed."
