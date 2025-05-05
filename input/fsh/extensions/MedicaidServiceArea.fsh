Extension: MedicaidServiceArea
Id: medicaid-service-area
Title: "Medicaid Service Area"
Description: "The geographic area covered by a Medicaid network."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only Reference(Location)
* valueReference 1..1
