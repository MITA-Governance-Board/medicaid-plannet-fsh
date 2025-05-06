// MedicaidPractitionerRole.fsh
// Profile definition for a Medicaid Practitioner Role

Profile: MedicaidPractitionerRole
Parent: PractitionerRole
Id: medicaid-practitioner-role
Title: "Medicaid Practitioner Role"
Description: "Profile for a practitioner role in a Medicaid provider directory, incorporating elements from the Da Vinci Plan-Net and FAST NDH Implementation Guides."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-05-06"
* ^publisher = "HL7 Financial Management Working Group"
* ^contact.name = "HL7 Financial Management Working Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fm"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"

// Require active status
* active 1..1

// Require practitioner reference
* practitioner 1..1
* practitioner only Reference(MedicaidPractitioner)

// Require organization reference
* organization 1..1
* organization only Reference(MedicaidOrganization)

// Require code
* code 1..*

// Require specialty
* specialty 1..*

// Require location
* location 1..*
* location only Reference(MedicaidLocation)

// Require telecom
* telecom 1..*

// Require availability information
* availableTime 1..*
* availableTime.daysOfWeek 1..*
* availableTime.availableStartTime 1..1
* availableTime.availableEndTime 1..1

// Add extensions for Medicaid-specific information
* extension contains
    AcceptingNewPatients named acceptingNewPatients 0..1 and
    CulturalCompetencyTraining named culturalCompetencyTraining 0..* and
    MedicaidServiceCategory named medicaidServiceCategory 0..*

// Define extensions
Extension: AcceptingNewPatients
Id: accepting-new-patients
Title: "Accepting New Patients"
Description: "Indicates whether the practitioner is accepting new Medicaid patients."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* extension contains
    acceptingPatients 1..1 and
    fromNetwork 0..1
* extension[acceptingPatients].value[x] only CodeableConcept
* extension[acceptingPatients].valueCodeableConcept from AcceptingPatientsVS (required)
* extension[fromNetwork].value[x] only Reference(MedicaidNetwork)

Extension: CulturalCompetencyTraining
Id: cultural-competency-training
Title: "Cultural Competency Training"
Description: "Information about cultural competency training completed by the practitioner."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* extension contains
    trainingType 1..1 and
    completionDate 1..1
* extension[trainingType].value[x] only string
* extension[completionDate].value[x] only date

Extension: MedicaidServiceCategory
Id: medicaid-service-category
Title: "Medicaid Service Category"
Description: "Category of service as defined by the state Medicaid program."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// Define value set for accepting patients
ValueSet: AcceptingPatientsVS
Id: accepting-patients-vs
Title: "Accepting Patients Value Set"
Description: "Value set for indicating whether a practitioner is accepting new patients."
* include codes from system AcceptingPatientsCS

// Define code system for accepting patients
CodeSystem: AcceptingPatientsCS
Id: accepting-patients-cs
Title: "Accepting Patients Code System"
Description: "Code system for indicating whether a practitioner is accepting new patients."
* #accepting "Accepting" "Accepting new patients"
* #accepting-limited "Accepting - Limited" "Accepting new patients with limitations"
* #not-accepting "Not Accepting" "Not accepting new patients"
* #accepting-medicaid "Accepting Medicaid" "Accepting new Medicaid patients only"
