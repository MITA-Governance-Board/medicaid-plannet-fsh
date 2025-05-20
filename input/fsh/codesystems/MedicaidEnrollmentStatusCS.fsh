CodeSystem: MedicaidEnrollmentStatusCS
Id: medicaid-enrollment-status-cs
Title: "Medicaid Enrollment Status Code System"
Description: "Code system for Medicaid provider enrollment status.

This code system defines standardized codes for provider enrollment statuses in Medicaid. A consistent set of enrollment status codes is needed to accurately represent a provider's current standing with Medicaid programs.

**Rationale**:
- 42 CFR 455.450 establishes screening levels for Medicaid providers
- MITA business process PM01 (Provider Enrollment) requires tracking enrollment status"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #active "Active" "Provider is actively enrolled in Medicaid."
* #pending "Pending" "Provider enrollment is pending approval."
* #suspended "Suspended" "Provider enrollment is temporarily suspended."
* #terminated "Terminated" "Provider enrollment has been terminated."
* #denied "Denied" "Provider enrollment application was denied."
