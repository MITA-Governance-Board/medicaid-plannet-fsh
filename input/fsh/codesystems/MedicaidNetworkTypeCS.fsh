CodeSystem: MedicaidNetworkTypeCS
Id: medicaid-network-type-cs
Title: "Medicaid Network Type Code System"
Description: "Code system for Medicaid network types."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fm
* #fee-for-service "Fee-for-Service" "A traditional Medicaid fee-for-service network."
* #managed-care "Managed Care" "A Medicaid managed care network."
* #primary-care-case-management "Primary Care Case Management" "A Medicaid primary care case management network."
* #accountable-care-organization "Accountable Care Organization" "A Medicaid accountable care organization network."
* #health-home "Health Home" "A Medicaid health home network."
* #integrated-care "Integrated Care" "A network providing integrated care for Medicaid and Medicare dual-eligible beneficiaries."
* #behavioral-health "Behavioral Health" "A specialized network for behavioral health services."
* #dental "Dental" "A specialized network for dental services."
* #pharmacy "Pharmacy" "A specialized network for pharmacy services."
* #long-term-services-and-supports "Long-Term Services and Supports" "A network for long-term services and supports."
* #waiver "Waiver" "A network for a Medicaid waiver program."
* #other "Other" "Other type of Medicaid network not listed."
