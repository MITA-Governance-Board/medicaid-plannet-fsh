### Overview

This Implementation Guide (IG) provides a framework for state-specific customizations while maintaining core interoperability. Medicaid programs vary significantly from state to state, with different eligibility criteria, provider types, facility classifications, and administrative processes. This framework enables states to extend the core profiles and terminology while preserving the ability to exchange data with other states and federal systems.

### Principles for State Customization

When implementing state-specific customizations, the following principles should be applied:

1. **Preserve Core Interoperability**: Maintain compatibility with the core profiles and terminology defined in this IG to ensure interoperability across state lines.
2. **Use Extension Patterns**: Leverage FHIR extension patterns for state-specific data elements rather than creating entirely new profiles.
3. **Extend Terminology**: Extend code systems and value sets rather than replacing them.
4. **Document State Variations**: Clearly document state-specific variations in implementation guides and technical documentation.
5. **Provide Concept Maps**: Create concept maps between state-specific codes and standard codes to facilitate data exchange.

### Extension Patterns

#### State-Specific Extensions

States can create extensions for state-specific data elements using the following pattern:

```
Extension: [StateName][ExtensionName]
Id: [state-name]-[extension-name]
Title: "[State Name] [Extension Name]"
Description: "State-specific extension for [purpose]."
* ^context.type = #element
* ^context.expression = "[Resource]"
* value[x] only [DataType]
```

Example:

```
Extension: CaliforniaMedicaidProviderCategory
Id: ca-medicaid-provider-category
Title: "California Medicaid Provider Category"
Description: "California-specific categorization of Medicaid providers."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only CodeableConcept
* valueCodeableConcept from CaliforniaMedicaidProviderCategoryVS (required)
```

#### State-Specific Profiles

If a state needs to create a state-specific profile, it should extend the core profiles defined in this IG:

```
Profile: [StateName]MedicaidPractitioner
Parent: MedicaidPractitioner
Id: [state-name]-medicaid-practitioner
Title: "[State Name] Medicaid Practitioner"
Description: "[State Name]-specific profile for a practitioner in a Medicaid provider directory."
* extension contains
    [StateName][ExtensionName] named [extensionName] 0..1
```

Example:

```
Profile: CaliforniaMedicaidPractitioner
Parent: MedicaidPractitioner
Id: ca-medicaid-practitioner
Title: "California Medicaid Practitioner"
Description: "California-specific profile for a practitioner in a Medicaid provider directory."
* extension contains
    CaliforniaMedicaidProviderCategory named providerCategory 0..1 and
    CaliforniaMedicaidEnrollmentProgram named enrollmentProgram 0..*
```

### Terminology Extensions

#### State-Specific Code Systems

States can create code systems for state-specific codes using the following pattern:

```
CodeSystem: [StateName][CodeSystemName]CS
Id: [state-name]-[code-system-name]-cs
Title: "[State Name] [Code System Name] Code System"
Description: "Code system for [State Name]-specific [purpose]."
* #code1 "Display 1" "Definition 1"
* #code2 "Display 2" "Definition 2"
```

Example:

```
CodeSystem: CaliforniaMedicaidProviderCategoryCS
Id: ca-medicaid-provider-category-cs
Title: "California Medicaid Provider Category Code System"
Description: "Code system for California-specific Medicaid provider categories."
* #cat1 "Category 1" "California provider category 1"
* #cat2 "Category 2" "California provider category 2"
```

#### State-Specific Value Sets

States can create value sets that include both state-specific codes and standard codes:

```
ValueSet: [StateName][ValueSetName]VS
Id: [state-name]-[value-set-name]-vs
Title: "[State Name] [Value Set Name] Value Set"
Description: "Value set for [State Name]-specific [purpose]."
* include codes from system [StateName][CodeSystemName]CS
* include codes from system [StandardCodeSystem] where [filter]
```

Example:

```
ValueSet: CaliforniaMedicaidProviderCategoryVS
Id: ca-medicaid-provider-category-vs
Title: "California Medicaid Provider Category Value Set"
Description: "Value set for California-specific Medicaid provider categories."
* include codes from system CaliforniaMedicaidProviderCategoryCS
* include codes from system MedicaidProviderTypeCS
```

### Concept Maps

States should create concept maps between state-specific codes and standard codes to facilitate data exchange:

```
Instance: [state-name]-to-standard-[concept]-map
InstanceOf: ConceptMap
Title: "[State Name] to Standard [Concept] Concept Map"
Description: "Mapping between [State Name]-specific [concept] and standard [concept]."
* sourceCanonical = "[state-specific-code-system-url]"
* targetCanonical = "[standard-code-system-url]"
* group[+].source = "[state-specific-code-system-url]"
* group[=].target = "[standard-code-system-url]"
* group[=].element[+].code = #[state-code]
* group[=].element[=].target[+].code = #[standard-code]
* group[=].element[=].target[=].equivalence = #[equivalence]
```

Example:

```
Instance: ca-to-medicaid-provider-category-map
InstanceOf: ConceptMap
Title: "California to Medicaid Provider Category Concept Map"
Description: "Mapping between California-specific provider categories and standard Medicaid provider types."
* sourceCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/ca-medicaid-provider-category-cs"
* targetCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs"
* group[+].source = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/ca-medicaid-provider-category-cs"
* group[=].target = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs"
* group[=].element[+].code = #cat1
* group[=].element[=].target[+].code = #physician
* group[=].element[=].target[=].equivalence = #equivalent
```

### Implementation Guidance

#### Namespace Conventions

States should use the following namespace conventions:

- State-specific code systems: `http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/[state-code]-[code-system-name]-cs`
- State-specific value sets: `http://hl7.org/fhir/us/medicaid-plannet/ValueSet/[state-code]-[value-set-name]-vs`
- State-specific profiles: `http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/[state-code]-[profile-name]`
- State-specific extensions: `http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/[state-code]-[extension-name]`

Where `[state-code]` is the two-letter state code (e.g., `ca` for California).

#### Documentation

States should document their customizations in a state-specific implementation guide that references this core IG. The state-specific IG should include:

1. Overview of state-specific requirements
2. Profiles and extensions
3. Terminology
4. Concept maps
5. Examples
6. Implementation guidance

#### Testing and Validation

States should test their customizations to ensure:

1. Conformance to the core IG
2. Correct implementation of state-specific extensions
3. Proper mapping between state-specific and standard codes
4. Interoperability with other systems

### Examples

#### Example 1: State-Specific Provider Type

```
// California-specific provider category code system
CodeSystem: CaliforniaMedicaidProviderCategoryCS
Id: ca-medicaid-provider-category-cs
Title: "California Medicaid Provider Category Code System"
Description: "Code system for California-specific Medicaid provider categories."
* #fqhc "Federally Qualified Health Center" "A federally qualified health center in California"
* #rhc "Rural Health Clinic" "A rural health clinic in California"
* #ihs "Indian Health Service" "An Indian Health Service facility in California"

// California-specific provider category value set
ValueSet: CaliforniaMedicaidProviderCategoryVS
Id: ca-medicaid-provider-category-vs
Title: "California Medicaid Provider Category Value Set"
Description: "Value set for California-specific Medicaid provider categories."
* include codes from system CaliforniaMedicaidProviderCategoryCS
* include codes from system MedicaidProviderTypeCS

// California-specific provider category extension
Extension: CaliforniaMedicaidProviderCategory
Id: ca-medicaid-provider-category
Title: "California Medicaid Provider Category"
Description: "California-specific categorization of Medicaid providers."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only CodeableConcept
* valueCodeableConcept from CaliforniaMedicaidProviderCategoryVS (required)

// California-specific practitioner profile
Profile: CaliforniaMedicaidPractitioner
Parent: MedicaidPractitioner
Id: ca-medicaid-practitioner
Title: "California Medicaid Practitioner"
Description: "California-specific profile for a practitioner in a Medicaid provider directory."
* extension contains
    CaliforniaMedicaidProviderCategory named providerCategory 0..1

// Concept map from California provider categories to standard Medicaid provider types
Instance: ca-to-medicaid-provider-category-map
InstanceOf: ConceptMap
Title: "California to Medicaid Provider Category Concept Map"
Description: "Mapping between California-specific provider categories and standard Medicaid provider types."
* sourceCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/ca-medicaid-provider-category-cs"
* targetCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs"
* group[+].source = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/ca-medicaid-provider-category-cs"
* group[=].target = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs"
* group[=].element[+].code = #fqhc
* group[=].element[=].target[+].code = #clinic
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[+].code = #rhc
* group[=].element[=].target[+].code = #clinic
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[+].code = #ihs
* group[=].element[=].target[+].code = #clinic
* group[=].element[=].target[=].equivalence = #wider
```

#### Example 2: State-Specific Enrollment Program

```
// New York-specific enrollment program code system
CodeSystem: NewYorkMedicaidEnrollmentProgramCS
Id: ny-medicaid-enrollment-program-cs
Title: "New York Medicaid Enrollment Program Code System"
Description: "Code system for New York-specific Medicaid enrollment programs."
* #mainstream "Mainstream Medicaid Managed Care" "New York Mainstream Medicaid Managed Care program"
* #harp "Health and Recovery Plan" "New York Health and Recovery Plan for behavioral health services"
* #mltc "Managed Long-Term Care" "New York Managed Long-Term Care program"

// New York-specific enrollment program extension
Extension: NewYorkMedicaidEnrollmentProgram
Id: ny-medicaid-enrollment-program
Title: "New York Medicaid Enrollment Program"
Description: "New York-specific Medicaid enrollment program."
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from NewYorkMedicaidEnrollmentProgramVS (required)

// New York-specific enrollment program value set
ValueSet: NewYorkMedicaidEnrollmentProgramVS
Id: ny-medicaid-enrollment-program-vs
Title: "New York Medicaid Enrollment Program Value Set"
Description: "Value set for New York-specific Medicaid enrollment programs."
* include codes from system NewYorkMedicaidEnrollmentProgramCS

// New York-specific organization profile
Profile: NewYorkMedicaidOrganization
Parent: MedicaidOrganization
Id: ny-medicaid-organization
Title: "New York Medicaid Organization"
Description: "New York-specific profile for an organization in a Medicaid provider directory."
* extension contains
    NewYorkMedicaidEnrollmentProgram named enrollmentProgram 0..*

// Concept map from New York enrollment programs to standard Medicaid network types
Instance: ny-to-medicaid-network-type-map
InstanceOf: ConceptMap
Title: "New York to Medicaid Network Type Concept Map"
Description: "Mapping between New York-specific enrollment programs and standard Medicaid network types."
* sourceCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/ny-medicaid-enrollment-program-cs"
* targetCanonical = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-network-type-cs"
* group[+].source = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/ny-medicaid-enrollment-program-cs"
* group[=].target = "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-network-type-cs"
* group[=].element[+].code = #mainstream
* group[=].element[=].target[+].code = #managed-care
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #harp
* group[=].element[=].target[+].code = #behavioral-health
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #mltc
* group[=].element[=].target[+].code = #long-term-services-and-supports
* group[=].element[=].target[=].equivalence = #equivalent
```
