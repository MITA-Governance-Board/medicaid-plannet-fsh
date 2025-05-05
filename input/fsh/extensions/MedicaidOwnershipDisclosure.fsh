Extension: MedicaidOwnershipDisclosure
Id: medicaid-ownership-disclosure
Title: "Medicaid Ownership Disclosure"
Description: "Information about the ownership and control of a Medicaid provider organization."
* ^context.type = #element
* ^context.expression = "Organization"
* extension contains
    ownershipType 1..1 and
    disclosureDate 1..1 and
    owner 1..*
* extension[ownershipType].value[x] only CodeableConcept
* extension[ownershipType].valueCodeableConcept from MedicaidOwnershipTypeVS (required)
* extension[ownershipType] ^short = "Type of ownership"
* extension[ownershipType] ^definition = "The type of ownership or control relationship."
* extension[disclosureDate].value[x] only date
* extension[disclosureDate] ^short = "Date of disclosure"
* extension[disclosureDate] ^definition = "The date when the ownership information was disclosed."
* extension[owner].extension contains
    ownerName 1..1 and
    ownerType 1..1 and
    ownershipPercentage 0..1 and
    relationshipType 1..1
* extension[owner].extension[ownerName].value[x] only string
* extension[owner].extension[ownerName] ^short = "Name of owner"
* extension[owner].extension[ownerName] ^definition = "The name of the individual or entity that has an ownership or control interest."
* extension[owner].extension[ownerType].value[x] only CodeableConcept
* extension[owner].extension[ownerType].valueCodeableConcept from MedicaidOwnerTypeVS (required)
* extension[owner].extension[ownerType] ^short = "Type of owner"
* extension[owner].extension[ownerType] ^definition = "The type of owner (individual or organization)."
* extension[owner].extension[ownershipPercentage].value[x] only decimal
* extension[owner].extension[ownershipPercentage] ^short = "Percentage of ownership"
* extension[owner].extension[ownershipPercentage] ^definition = "The percentage of ownership interest."
* extension[owner].extension[relationshipType].value[x] only CodeableConcept
* extension[owner].extension[relationshipType].valueCodeableConcept from MedicaidOwnershipRelationshipTypeVS (required)
* extension[owner].extension[relationshipType] ^short = "Type of relationship"
* extension[owner].extension[relationshipType] ^definition = "The type of relationship between the owner and the organization."
