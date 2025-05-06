# Versioning Strategy

## Overview

This Implementation Guide (IG) provides a framework for managing versions of code systems, value sets, profiles, and other artifacts. Effective versioning is essential for maintaining backward compatibility, supporting evolution over time, and ensuring interoperability across systems. This guidance outlines approaches for implementing versioning in FHIR-based provider directories.

## Versioning Principles

The following principles should guide the implementation of versioning:

1. **Semantic Versioning**: Use semantic versioning (MAJOR.MINOR.PATCH) to communicate the nature of changes.
2. **Backward Compatibility**: Maintain backward compatibility whenever possible, especially for minor and patch versions.
3. **Clear Documentation**: Document changes between versions, including additions, modifications, and deprecations.
4. **Transition Periods**: Provide transition periods for breaking changes to allow systems to adapt.
5. **Version Negotiation**: Support version negotiation to allow systems to interact using compatible versions.

## Artifact Versioning

### Code Systems

Code systems should be versioned using the following approach:

1. **Version Identifier**: Include a version identifier in the code system definition.
2. **Version URL**: Use versioned URLs for code systems (e.g., `http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/medicaid-provider-type-cs|1.0.0`).
3. **Change Documentation**: Document changes between versions, including new codes, modified codes, and deprecated codes.
4. **Backward Compatibility**: Maintain backward compatibility by not removing codes or changing their meaning.
5. **Deprecation Process**: Use a deprecation process for codes that are no longer recommended for use.

Example of a versioned code system:

```
CodeSystem: MedicaidProviderTypeCS
Id: medicaid-provider-type-cs
Title: "Medicaid Provider Type Code System"
Description: "Code system for Medicaid provider types."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* #physician "Physician" "A doctor of medicine or osteopathy."
* #nurse-practitioner "Nurse Practitioner" "A registered nurse with advanced education and clinical training."
* #physician-assistant "Physician Assistant" "A healthcare professional who practices medicine under the supervision of a physician."
* #dentist "Dentist" "A healthcare professional who specializes in dentistry."
* #therapist "Therapist" "A healthcare professional who provides therapy services."
* #pharmacy "Pharmacy" "A facility where medicines are prepared and dispensed."
* #laboratory "Laboratory" "A facility that performs diagnostic tests."
* #hospital "Hospital" "A healthcare institution providing patient treatment with specialized staff and equipment."
* #clinic "Clinic" "A healthcare facility that is primarily devoted to the care of outpatients."
* #home-health "Home Health" "A provider of healthcare services delivered at the patient's home."
* #nursing-facility "Nursing Facility" "A facility that provides nursing care and related services."
* #behavioral-health "Behavioral Health" "A provider of mental health and substance abuse services."
* #other "Other" "Other type of provider not listed."
```

### Value Sets

Value sets should be versioned using the following approach:

1. **Version Identifier**: Include a version identifier in the value set definition.
2. **Version URL**: Use versioned URLs for value sets (e.g., `http://hl7.org/fhir/us/medicaid-plannet/ValueSet/medicaid-provider-type-vs|1.0.0`).
3. **Change Documentation**: Document changes between versions, including new codes, removed codes, and changes to included code systems.
4. **Expansion Documentation**: Document the expansion parameters used for each version.
5. **Backward Compatibility**: Maintain backward compatibility by not removing codes or changing their meaning.

Example of a versioned value set:

```
ValueSet: MedicaidProviderTypeVS
Id: medicaid-provider-type-vs
Title: "Medicaid Provider Type Value Set"
Description: "Value set for Medicaid provider types, including Medicaid-specific codes and standard NUCC Provider Taxonomy codes."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* include codes from system MedicaidProviderTypeCS|1.0.0
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #1
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #2
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #3
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #16
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #29
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #31
```

### Profiles

Profiles should be versioned using the following approach:

1. **Version Identifier**: Include a version identifier in the profile definition.
2. **Version URL**: Use versioned URLs for profiles (e.g., `http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner|0.1.0`).
3. **Change Documentation**: Document changes between versions, including new elements, modified elements, and deprecated elements.
4. **Backward Compatibility**: Maintain backward compatibility by not removing required elements or making optional elements required.
5. **Deprecation Process**: Use a deprecation process for elements that are no longer recommended for use.

Example of a versioned profile:

```
Profile: MedicaidPractitioner
Parent: PlannetPractitioner
Id: medicaid-practitioner
Title: "Medicaid Practitioner"
Description: "Profile for a practitioner in a Medicaid provider directory, extending the Da Vinci Plan-Net Practitioner profile and incorporating elements from the FAST NDH Implementation Guide."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-02"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
```

### Extensions

Extensions should be versioned using the following approach:

1. **Version Identifier**: Include a version identifier in the extension definition.
2. **Version URL**: Use versioned URLs for extensions (e.g., `http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-status|0.1.0`).
3. **Change Documentation**: Document changes between versions, including new elements, modified elements, and deprecated elements.
4. **Backward Compatibility**: Maintain backward compatibility by not removing required elements or making optional elements required.
5. **Deprecation Process**: Use a deprecation process for elements that are no longer recommended for use.

Example of a versioned extension:

```
Extension: MedicaidEnrollmentStatus
Id: medicaid-enrollment-status
Title: "Medicaid Enrollment Status"
Description: "The current enrollment status of a provider in the Medicaid program."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-02"
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidEnrollmentStatusVS (required)
* valueCodeableConcept 1..1
```

## Implementation Guide Versioning

The Implementation Guide itself should be versioned using the following approach:

1. **Semantic Versioning**: Use semantic versioning (MAJOR.MINOR.PATCH) for the IG.
2. **Version History**: Maintain a version history that documents changes between versions.
3. **Backward Compatibility**: Maintain backward compatibility for minor and patch versions.
4. **Breaking Changes**: Clearly document breaking changes in major versions.
5. **Transition Guidance**: Provide guidance for transitioning between major versions.

Example of IG versioning in sushi-config.yaml:

```yaml
id: hl7.fhir.us.medicaid.plannet
canonical: http://hl7.org/fhir/us/medicaid-plannet
name: MedicaidPlanNet
title: "Medicaid Provider Directory Implementation Guide"
description: "FHIR Implementation Guide for Medicaid Provider Directory functionality based on Da Vinci Plan-Net and FAST NDH"
status: draft
version: 0.1.0
fhirVersion: 4.0.1
copyrightYear: 2025+
releaseLabel: CI Build
```

## Version Negotiation

Systems should support version negotiation to allow interaction using compatible versions. This can be achieved through the following approaches:

### Content Negotiation

Systems can use HTTP content negotiation to request specific versions of resources:

```
GET /fhir/Practitioner/123 HTTP/1.1
Accept: application/fhir+json; fhirVersion=4.0.1
Accept-Profile: http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner|0.1.0
```

### Version Parameters

Systems can use version parameters in URLs to request specific versions of resources:

```
GET /fhir/Practitioner/123?_profile=http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner|0.1.0
```

### Capability Statement

Systems should document their supported versions in their Capability Statement:

```
{
  "resourceType": "CapabilityStatement",
  "id": "example",
  "status": "active",
  "date": "2025-05-06",
  "kind": "instance",
  "fhirVersion": "4.0.1",
  "format": ["application/fhir+json"],
  "implementationGuide": [
    "http://hl7.org/fhir/us/medicaid-plannet|0.1.0"
  ],
  "rest": [
    {
      "mode": "server",
      "resource": [
        {
          "type": "Practitioner",
          "profile": [
            "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner|0.1.0"
          ]
        }
      ]
    }
  ]
}
```

## Deprecation Process

The deprecation process should include the following steps:

1. **Mark as Deprecated**: Mark the artifact as deprecated in its definition.
2. **Document Reason**: Document the reason for deprecation.
3. **Provide Alternative**: Provide an alternative to the deprecated artifact.
4. **Set Deprecation Date**: Set a date after which the artifact should no longer be used.
5. **Communicate Deprecation**: Communicate the deprecation to stakeholders.

Example of a deprecated code:

```
* #deprecated-code "Deprecated Code" "This code is deprecated and should no longer be used." ^deprecated = true
```

Example of a deprecated profile:

```
Profile: DeprecatedProfile
Parent: Patient
Id: deprecated-profile
Title: "Deprecated Profile"
Description: "This profile is deprecated and should no longer be used."
* ^status = #retired
* ^date = "2025-05-06"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
```

## Version Management

### Version Control

All artifacts should be managed in a version control system (e.g., Git) to track changes over time. The version control system should:

1. **Track Changes**: Track all changes to artifacts.
2. **Support Branching**: Support branching for developing new versions.
3. **Support Tagging**: Support tagging for marking releases.
4. **Support Pull Requests**: Support pull requests for reviewing changes.
5. **Support Continuous Integration**: Support continuous integration for validating changes.

### Release Management

Releases should be managed using the following approach:

1. **Release Planning**: Plan releases based on stakeholder needs and priorities.
2. **Release Testing**: Test releases to ensure quality and compatibility.
3. **Release Documentation**: Document changes in each release.
4. **Release Communication**: Communicate releases to stakeholders.
5. **Release Archiving**: Archive releases for future reference.

### Continuous Integration

Continuous integration should be used to validate changes and ensure quality:

1. **Automated Validation**: Automatically validate artifacts against FHIR rules.
2. **Automated Testing**: Automatically test artifacts against test cases.
3. **Automated Building**: Automatically build the IG from source.
4. **Automated Publishing**: Automatically publish the IG to a web server.
5. **Automated Notification**: Automatically notify stakeholders of changes.

## Implementation Guidance

### Version Identification

Systems should identify the versions of artifacts they support:

1. **Capability Statement**: Document supported versions in the Capability Statement.
2. **Version Headers**: Include version information in HTTP headers.
3. **Version Parameters**: Support version parameters in URLs.
4. **Version Metadata**: Include version information in resource metadata.
5. **Version Documentation**: Document supported versions in system documentation.

### Version Compatibility

Systems should ensure compatibility between versions:

1. **Compatibility Testing**: Test compatibility between different versions.
2. **Compatibility Documentation**: Document compatibility between versions.
3. **Compatibility Mapping**: Provide mappings between incompatible versions.
4. **Compatibility Validation**: Validate resources against supported versions.
5. **Compatibility Negotiation**: Negotiate compatible versions with other systems.

### Version Transition

Systems should support transition between versions:

1. **Transition Planning**: Plan for transitions between versions.
2. **Transition Testing**: Test transitions between versions.
3. **Transition Documentation**: Document transitions between versions.
4. **Transition Support**: Provide support for transitions between versions.
5. **Transition Monitoring**: Monitor transitions between versions.

## Examples

### Example 1: Code System Versioning

```
CodeSystem: MedicaidProviderTypeCS
Id: medicaid-provider-type-cs
Title: "Medicaid Provider Type Code System"
Description: "Code system for Medicaid provider types."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* ^caseSensitive = true
* ^content = #complete
* #physician "Physician" "A doctor of medicine or osteopathy."
* #nurse-practitioner "Nurse Practitioner" "A registered nurse with advanced education and clinical training."
* #physician-assistant "Physician Assistant" "A healthcare professional who practices medicine under the supervision of a physician."
* #dentist "Dentist" "A healthcare professional who specializes in dentistry."
* #therapist "Therapist" "A healthcare professional who provides therapy services."
* #pharmacy "Pharmacy" "A facility where medicines are prepared and dispensed."
* #laboratory "Laboratory" "A facility that performs diagnostic tests."
* #hospital "Hospital" "A healthcare institution providing patient treatment with specialized staff and equipment."
* #clinic "Clinic" "A healthcare facility that is primarily devoted to the care of outpatients."
* #home-health "Home Health" "A provider of healthcare services delivered at the patient's home."
* #nursing-facility "Nursing Facility" "A facility that provides nursing care and related services."
* #behavioral-health "Behavioral Health" "A provider of mental health and substance abuse services."
* #other "Other" "Other type of provider not listed."
```

### Example 2: Value Set Versioning

```
ValueSet: MedicaidProviderTypeVS
Id: medicaid-provider-type-vs
Title: "Medicaid Provider Type Value Set"
Description: "Value set for Medicaid provider types, including Medicaid-specific codes and standard NUCC Provider Taxonomy codes."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-05-06"
* include codes from system MedicaidProviderTypeCS|1.0.0
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #1
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #2
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #3
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #16
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #29
* include codes from system http://nucc.org/provider-taxonomy|2.1.0 where concept is-a #31
```

### Example 3: Profile Versioning

```
Profile: MedicaidPractitioner
Parent: PlannetPractitioner
Id: medicaid-practitioner
Title: "Medicaid Practitioner"
Description: "Profile for a practitioner in a Medicaid provider directory, extending the Da Vinci Plan-Net Practitioner profile and incorporating elements from the FAST NDH Implementation Guide."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-02"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
```

### Example 4: Extension Versioning

```
Extension: MedicaidEnrollmentStatus
Id: medicaid-enrollment-status
Title: "Medicaid Enrollment Status"
Description: "The current enrollment status of a provider in the Medicaid program."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-02"
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from MedicaidEnrollmentStatusVS (required)
* valueCodeableConcept 1..1
```

### Example 5: Implementation Guide Versioning

```yaml
id: hl7.fhir.us.medicaid.plannet
canonical: http://hl7.org/fhir/us/medicaid-plannet
name: MedicaidPlanNet
title: "Medicaid Provider Directory Implementation Guide"
description: "FHIR Implementation Guide for Medicaid Provider Directory functionality based on Da Vinci Plan-Net and FAST NDH"
status: draft
version: 0.1.0
fhirVersion: 4.0.1
copyrightYear: 2025+
releaseLabel: CI Build
```

## Conclusion

Effective versioning is essential for maintaining backward compatibility, supporting evolution over time, and ensuring interoperability across systems. By implementing a comprehensive versioning strategy, provider directory systems can manage changes to code systems, value sets, profiles, and other artifacts in a way that supports interoperability and minimizes disruption.

This guidance provides a framework for implementing versioning in FHIR-based provider directories. Implementers should adapt this guidance to their specific needs and constraints, taking into account their development processes, release cycles, and stakeholder requirements.

Regular review and improvement of versioning practices are essential to address evolving needs and changing requirements. Provider directory systems should establish a continuous improvement process for versioning, including regular review of versioning practices, stakeholder feedback, and industry best practices.
