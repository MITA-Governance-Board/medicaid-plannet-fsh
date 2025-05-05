Extension: MedicaidEnrollmentDate
Id: medicaid-enrollment-date
Title: "Medicaid Enrollment Date"
Description: "The date when a provider was enrolled in the Medicaid program."
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context.expression = "Organization"
* value[x] only date
* valueDate 1..1
