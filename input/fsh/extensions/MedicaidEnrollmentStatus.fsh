Extension: MedicaidEnrollmentStatus
Id: medicaid-enrollment-status
Title: "Medicaid Enrollment Status"
Description: "The current enrollment status of a provider in the Medicaid program."
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidEnrollmentStatusVS (required)
* valueCodeableConcept 1..1
