Extension: MedicaidServiceArea
Id: medicaid-service-area
Title: "Medicaid Service Area"
Description: "The geographic area covered by a Medicaid network.

This extension defines the geographic areas covered by a provider or network. Service areas are important for network adequacy assessment and helping beneficiaries understand service availability in their area.

**Rationale**:
- 42 CFR 438.68 requires states to develop network adequacy standards that include time and distance standards
- MITA business process PM08 (Provider Network Management) includes defining service areas"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only Reference(Location)
* valueReference 1..1
