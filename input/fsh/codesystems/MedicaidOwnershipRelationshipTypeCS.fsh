CodeSystem: MedicaidOwnershipRelationshipTypeCS
Id: medicaid-ownership-relationship-type-cs
Title: "Medicaid Ownership Relationship Type Code System"
Description: "Code system for Medicaid provider ownership relationship types.

This code system defines codes for types of ownership relationships. Medicaid requires disclosure of ownership information for program integrity purposes. This code system standardizes the types of relationships that can exist.

**Rationale**:
- 42 CFR 455.104 requires disclosure of ownership and control information
- MITA Provider Management business processes include verification of ownership information"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #owner "Owner" "An individual or entity with an ownership interest."
* #board-member "Board Member" "A member of the board of directors or governing body."
* #officer "Officer" "An officer of the organization."
* #managing-employee "Managing Employee" "A managing employee of the organization."
* #family-member "Family Member" "A family member of an owner, board member, officer, or managing employee."
* #subcontractor "Subcontractor" "A subcontractor of the organization."
