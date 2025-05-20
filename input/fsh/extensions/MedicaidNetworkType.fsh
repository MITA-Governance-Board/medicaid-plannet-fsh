Extension: MedicaidNetworkType
Id: medicaid-network-type
Title: "Medicaid Network Type"
Description: "The type of Medicaid network (e.g., Fee-for-Service, Managed Care).

This extension classifies networks according to Medicaid program structures. Medicaid has various network types that affect provider participation and beneficiary access. This extension allows for clear categorization of networks.

**Rationale**:
- MITA business process PM08 (Provider Network Management) requires classification of networks
- The CMS Interoperability Rule requires information about provider network status"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidNetworkTypeVS (required)
* valueCodeableConcept 1..1
