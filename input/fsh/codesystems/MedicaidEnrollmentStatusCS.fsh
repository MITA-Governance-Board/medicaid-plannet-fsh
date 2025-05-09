CodeSystem: MedicaidEnrollmentStatusCS
Id: medicaid-enrollment-status-cs
Title: "Medicaid Enrollment Status Code System"
Description: "Code system for Medicaid provider enrollment status."
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
