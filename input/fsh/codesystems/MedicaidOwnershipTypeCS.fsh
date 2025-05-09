CodeSystem: MedicaidOwnershipTypeCS
Id: medicaid-ownership-type-cs
Title: "Medicaid Ownership Type Code System"
Description: "Code system for Medicaid provider ownership types."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #direct "Direct Ownership" "Direct ownership interest in the disclosing entity."
* #indirect "Indirect Ownership" "Indirect ownership interest in the disclosing entity."
* #controlling "Controlling Interest" "Controlling interest in the disclosing entity."
* #managing-employee "Managing Employee" "A managing employee of the disclosing entity."
* #board-member "Board Member" "A member of the board of directors or governing body."
* #officer "Officer" "An officer of the disclosing entity."
