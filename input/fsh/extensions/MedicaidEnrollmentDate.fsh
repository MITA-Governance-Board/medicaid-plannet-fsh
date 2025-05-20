Extension: MedicaidEnrollmentDate
Id: medicaid-enrollment-date
Title: "Medicaid Enrollment Date"
Description: "The date when a provider was enrolled in the Medicaid program.

This extension records the date when a provider was enrolled in the Medicaid program. Enrollment dates are important for historical tracking, reporting, and program integrity. This information helps establish the timeline of a provider's participation in Medicaid.

**Rationale**:
- MITA business process PM02 (Provider Information Management) requires tracking of enrollment dates
- 42 CFR 455.414 requires revalidation of provider enrollment at least every 5 years, necessitating tracking of initial enrollment dates"
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context.expression = "Organization"
* value[x] only date
* valueDate 1..1
