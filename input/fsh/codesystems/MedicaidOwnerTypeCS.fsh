CodeSystem: MedicaidOwnerTypeCS
Id: medicaid-owner-type-cs
Title: "Medicaid Owner Type Code System"
Description: "Code system for Medicaid provider owner types.

This code system defines codes for types of owners. Medicaid requires disclosure of ownership information for program integrity purposes. This code system standardizes the types of entities that can be owners.

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
* #individual "Individual" "A natural person."
* #organization "Organization" "A company, corporation, or other legal entity."
* #government "Government" "A government entity."
