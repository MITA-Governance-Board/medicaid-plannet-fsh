Extension: MedicaidNetworkType
Id: medicaid-network-type
Title: "Medicaid Network Type"
Description: "The type of Medicaid network (e.g., Fee-for-Service, Managed Care)."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidNetworkTypeVS (required)
* valueCodeableConcept 1..1

