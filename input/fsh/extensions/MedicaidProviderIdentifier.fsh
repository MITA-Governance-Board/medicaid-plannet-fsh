Extension: MedicaidProviderIdentifier
Id: medicaid-provider-identifier
Title: "Medicaid Provider Identifier"
Description: "A unique identifier assigned to a provider by a state Medicaid program."
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] only Identifier
* valueIdentifier 1..1
* valueIdentifier.system 1..1
* valueIdentifier.value 1..1
