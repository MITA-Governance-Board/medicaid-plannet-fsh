# Examples

This page provides examples of how to use the profiles defined in this Implementation Guide. These examples demonstrate how to represent Medicaid provider directory information using FHIR resources.

## Example Scenarios

The examples in this IG are organized around common scenarios in Medicaid provider directories:

1. **Individual Provider Enrollment**: Examples showing how to represent individual healthcare providers enrolled in Medicaid
2. **Organizational Provider Enrollment**: Examples showing how to represent healthcare organizations enrolled in Medicaid
3. **Provider Network Participation**: Examples showing how providers participate in Medicaid networks and managed care plans
4. **Service Offerings**: Examples showing how to represent services offered by Medicaid providers
5. **Electronic Endpoints**: Examples showing how to represent electronic endpoints for Medicaid providers

## Individual Provider Examples

### Example 1: Primary Care Physician

This example shows a primary care physician enrolled in Medicaid:

```json
{
  "resourceType": "Practitioner",
  "id": "medicaid-practitioner-example-1",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner"
    ]
  },
  "identifier": [
    {
      "system": "http://hl7.org/fhir/sid/us-npi",
      "value": "1122334455"
    },
    {
      "system": "http://example.org/state-medicaid/provider-id",
      "value": "MCD123456",
      "extension": [
        {
          "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-provider-identifier",
          "valueIdentifier": {
            "system": "http://example.org/state-medicaid/provider-id",
            "value": "MCD123456"
          }
        }
      ]
    }
  ],
  "active": true,
  "name": [
    {
      "family": "Smith",
      "given": [
        "John",
        "A"
      ],
      "prefix": [
        "Dr."
      ],
      "suffix": [
        "MD"
      ]
    }
  ],
  "telecom": [
    {
      "system": "phone",
      "value": "555-123-4567",
      "use": "work"
    },
    {
      "system": "email",
      "value": "john.smith@example.org",
      "use": "work"
    }
  ],
  "address": [
    {
      "use": "work",
      "type": "both",
      "line": [
        "123 Main St",
        "Suite 400"
      ],
      "city": "Anytown",
      "state": "NY",
      "postalCode": "12345",
      "country": "US"
    }
  ],
  "gender": "male",
  "qualification": [
    {
      "identifier": [
        {
          "system": "http://example.org/state-medical-license",
          "value": "MD123456"
        }
      ],
      "code": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code": "MD",
            "display": "Doctor of Medicine"
          }
        ]
      },
      "issuer": {
        "display": "State Medical Board"
      },
      "period": {
        "start": "2010-01-01",
        "end": "2025-12-31"
      }
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-status",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/MedicaidEnrollmentStatusCS",
            "code": "active",
            "display": "Active"
          }
        ]
      }
    },
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-date",
      "valueDate": "2015-01-15"
    },
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-provider-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/MedicaidProviderTypeCS",
            "code": "physician",
            "display": "Physician"
          }
        ]
      }
    }
  ]
}
```

### Example 2: Practitioner Role

This example shows the role of the primary care physician within an organization:

```json
{
  "resourceType": "PractitionerRole",
  "id": "medicaid-practitioner-role-example-1",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-practitioner-role"
    ]
  },
  "active": true,
  "practitioner": {
    "reference": "Practitioner/medicaid-practitioner-example-1"
  },
  "organization": {
    "reference": "Organization/medicaid-organization-example-1"
  },
  "code": [
    {
      "coding": [
        {
          "system": "http://nucc.org/provider-taxonomy",
          "code": "207Q00000X",
          "display": "Family Medicine Physician"
        }
      ]
    }
  ],
  "specialty": [
    {
      "coding": [
        {
          "system": "http://nucc.org/provider-taxonomy",
          "code": "207Q00000X",
          "display": "Family Medicine"
        }
      ]
    }
  ],
  "location": [
    {
      "reference": "Location/medicaid-location-example-1"
    }
  ],
  "healthcareService": [
    {
      "reference": "HealthcareService/medicaid-healthcare-service-example-1"
    }
  ],
  "telecom": [
    {
      "system": "phone",
      "value": "555-123-4567",
      "use": "work"
    }
  ],
  "availableTime": [
    {
      "daysOfWeek": [
        "mon",
        "tue",
        "wed",
        "thu",
        "fri"
      ],
      "availableStartTime": "09:00:00",
      "availableEndTime": "17:00:00"
    }
  ],
  "notAvailable": [
    {
      "description": "Dr. Smith is not available on public holidays",
      "during": {
        "start": "2023-12-25",
        "end": "2023-12-26"
      }
    }
  ],
  "availabilityExceptions": "Dr. Smith may be unavailable during scheduled hospital rounds.",
  "endpoint": [
    {
      "reference": "Endpoint/medicaid-endpoint-example-1"
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-service-category",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/MedicaidServiceCategoryCS",
            "code": "primary-care",
            "display": "Primary Care"
          }
        ]
      }
    },
    {
      "url": "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/newpatients",
      "extension": [
        {
          "url": "acceptingPatients",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AcceptingPatientsCS",
                "code": "accepting",
                "display": "Accepting"
              }
            ]
          }
        },
        {
          "url": "fromNetwork",
          "valueReference": {
            "reference": "Network/medicaid-network-example-1"
          }
        }
      ]
    }
  ]
}
```

## Organization Examples

### Example 3: Healthcare Organization

This example shows a healthcare organization enrolled in Medicaid:

```json
{
  "resourceType": "Organization",
  "id": "medicaid-organization-example-1",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-organization"
    ]
  },
  "identifier": [
    {
      "system": "http://hl7.org/fhir/sid/us-npi",
      "value": "9988776655"
    },
    {
      "system": "http://example.org/state-medicaid/provider-id",
      "value": "MCD789012",
      "extension": [
        {
          "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-provider-identifier",
          "valueIdentifier": {
            "system": "http://example.org/state-medicaid/provider-id",
            "value": "MCD789012"
          }
        }
      ]
    }
  ],
  "active": true,
  "type": [
    {
      "coding": [
        {
          "system": "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/MedicaidFacilityTypeCS",
          "code": "clinic",
          "display": "Clinic"
        }
      ]
    }
  ],
  "name": "Anytown Medical Group",
  "telecom": [
    {
      "system": "phone",
      "value": "555-987-6543",
      "use": "work"
    },
    {
      "system": "email",
      "value": "info@anytownmedical.example.org",
      "use": "work"
    },
    {
      "system": "url",
      "value": "https://www.anytownmedical.example.org",
      "use": "work"
    }
  ],
  "address": [
    {
      "use": "work",
      "type": "both",
      "line": [
        "456 Health Avenue",
        "Building B"
      ],
      "city": "Anytown",
      "state": "NY",
      "postalCode": "12345",
      "country": "US"
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-status",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/MedicaidEnrollmentStatusCS",
            "code": "active",
            "display": "Active"
          }
        ]
      }
    },
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-enrollment-date",
      "valueDate": "2012-06-01"
    }
  ]
}
```

## Network Examples

### Example 4: Medicaid Network

This example shows a Medicaid managed care network:

```json
{
  "resourceType": "Organization",
  "id": "medicaid-network-example-1",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Network"
    ]
  },
  "identifier": [
    {
      "system": "http://example.org/state-medicaid/network-id",
      "value": "MCO-NETWORK-001"
    }
  ],
  "active": true,
  "type": [
    {
      "coding": [
        {
          "system": "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationType",
          "code": "ntwk",
          "display": "Network"
        }
      ]
    }
  ],
  "name": "Anytown Medicaid Managed Care Network",
  "telecom": [
    {
      "system": "phone",
      "value": "555-789-0123",
      "use": "work"
    },
    {
      "system": "url",
      "value": "https://www.anytownmedicaid.example.org",
      "use": "work"
    }
  ],
  "address": [
    {
      "use": "work",
      "type": "both",
      "line": [
        "789 Medicaid Plaza",
        "Suite 300"
      ],
      "city": "Anytown",
      "state": "NY",
      "postalCode": "12345",
      "country": "US"
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-network-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/us/medicaid-plannet/CodeSystem/MedicaidNetworkTypeCS",
            "code": "managed-care",
            "display": "Managed Care"
          }
        ]
      }
    },
    {
      "url": "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-service-area",
      "valueReference": {
        "reference": "Location/medicaid-service-area-example-1"
      }
    }
  ]
}
```

### Example 5: Organization Affiliation

This example shows an organization's affiliation with a Medicaid network:

```json
{
  "resourceType": "OrganizationAffiliation",
  "id": "medicaid-organization-affiliation-example-1",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/us/medicaid-plannet/StructureDefinition/medicaid-organization-affiliation"
    ]
  },
  "active": true,
  "organization": {
    "reference": "Organization/medicaid-organization-example-1"
  },
  "participatingOrganization": {
    "reference": "Organization/medicaid-network-example-1"
  },
  "code": [
    {
      "coding": [
        {
          "system": "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleType",
          "code": "provider",
          "display": "Provider"
        }
      ]
    }
  ],
  "specialty": [
    {
      "coding": [
        {
          "system": "http://nucc.org/provider-taxonomy",
          "code": "261QP2300X",
          "display": "Primary Care Clinic/Center"
        }
      ]
    }
  ],
  "location": [
    {
      "reference": "Location/medicaid-location-example-1"
    }
  ],
  "healthcareService": [
    {
      "reference": "HealthcareService/medicaid-healthcare-service-example-1"
    }
  ],
  "telecom": [
    {
      "system": "phone",
      "value": "555-987-6543",
      "use": "work"
    }
  ],
  "endpoint": [
    {
      "reference": "Endpoint/medicaid-endpoint-example-1"
    }
  ],
  "period": {
    "start": "2020-01-01",
    "end": "2025-12-31"
  }
}
```

## Additional Examples

Additional examples for all profiles defined in this Implementation Guide can be found in the [Examples](artifacts.html#examples) section of the Artifacts page.
