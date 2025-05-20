Extension: MedicaidEnrollmentStatus
Id: medicaid-enrollment-status
Title: "Medicaid Enrollment Status"
Description: "The current enrollment status of a provider in the Medicaid program.

This extension represents a provider's current enrollment status in the Medicaid program. Tracking provider enrollment status is critical for maintaining accurate provider directories and ensuring that only eligible providers can bill for Medicaid services. This extension allows systems to represent statuses like active, pending, suspended, terminated, or denied.

**Rationale**:
- 42 CFR 455.450 establishes screening levels for Medicaid providers based on risk categories
- The CMS Interoperability Rule requires up-to-date provider network status information"
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidEnrollmentStatusVS (required)
* valueCodeableConcept 1..1
