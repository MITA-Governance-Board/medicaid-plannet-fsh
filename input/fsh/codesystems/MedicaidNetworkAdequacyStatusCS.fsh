CodeSystem: MedicaidNetworkAdequacyStatusCS
Id: medicaid-network-adequacy-status-cs
Title: "Medicaid Network Adequacy Status Code System"
Description: "Code system for Medicaid network adequacy status.

This code system defines codes for representing network adequacy status. Medicaid managed care plans must meet network adequacy standards. This code system provides a standardized way to represent adequacy status.

**Rationale**:
- 42 CFR 438.68 establishes network adequacy standards for Medicaid managed care
- MITA business process PM08 (Provider Network Management) includes network adequacy assessment"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #adequate "Adequate" "The network meets all adequacy standards."
* #partially-adequate "Partially Adequate" "The network meets some but not all adequacy standards."
* #inadequate "Inadequate" "The network does not meet adequacy standards."
* #pending-review "Pending Review" "The network adequacy is currently under review."
* #waiver-granted "Waiver Granted" "A waiver has been granted for one or more adequacy standards."
* #corrective-action-plan "Corrective Action Plan" "A corrective action plan is in place to address inadequacies."
