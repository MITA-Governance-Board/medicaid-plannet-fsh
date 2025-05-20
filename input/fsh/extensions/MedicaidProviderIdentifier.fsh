Extension: MedicaidProviderIdentifier
Id: medicaid-provider-identifier
Title: "Medicaid Provider Identifier"
Description: "A unique identifier assigned to a provider by a state Medicaid program.

This extension provides a standardized way to represent unique identifiers assigned to providers by state Medicaid programs. Medicaid programs assign unique identifiers to providers that are distinct from other identifiers like NPIs. These identifiers are essential for Medicaid-specific operations including claims processing, provider matching, and program integrity activities.

**Rationale**: 
- 42 CFR 455.410 requires all providers to be enrolled with state Medicaid agencies and have provider identifiers
- The MITA Provider Management business process (PM01 - Provider Enrollment) requires the assignment and management of provider identifiers"
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] only Identifier
* valueIdentifier 1..1
* valueIdentifier.system 1..1
* valueIdentifier.value 1..1
