Extension: MedicaidProviderType
Id: medicaid-provider-type
Title: "Medicaid Provider Type"
Description: "The type of provider as defined by the state Medicaid program.

This extension categorizes providers according to Medicaid-specific taxonomies. Medicaid programs often use provider type classifications that differ from standard industry codes. This extension allows for state-specific provider categorization while maintaining mappings to national standards.

**Rationale**:
- MITA Information Architecture requires classification of providers by type
- The concept map MedicaidToNUCCProviderTypeMap demonstrates the need to map between Medicaid-specific and standard codes"
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidProviderTypeVS (required)
* valueCodeableConcept 1..1
