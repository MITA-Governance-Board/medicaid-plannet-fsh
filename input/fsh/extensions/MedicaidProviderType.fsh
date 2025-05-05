Extension: MedicaidProviderType
Id: medicaid-provider-type
Title: "Medicaid Provider Type"
Description: "The type of provider as defined by the state Medicaid program."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidProviderTypeVS (required)
* valueCodeableConcept 1..1
