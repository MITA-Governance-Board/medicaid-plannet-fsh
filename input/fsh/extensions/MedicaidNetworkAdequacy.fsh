Extension: MedicaidNetworkAdequacy
Id: medicaid-network-adequacy
Title: "Medicaid Network Adequacy"
Description: "Metrics related to network adequacy requirements for Medicaid networks."
* ^context.type = #element
* ^context.expression = "Organization"
* extension contains
    adequacyStatus 1..1 and
    lastEvaluationDate 1..1 and
    providerToEnrolleeRatio 0..* and
    timeDistanceStandard 0..* and
    specialtyAvailability 0..*
* extension[adequacyStatus].value[x] only CodeableConcept
* extension[adequacyStatus].valueCodeableConcept from MedicaidNetworkAdequacyStatusVS (required)
* extension[adequacyStatus] ^short = "Network adequacy status"
* extension[adequacyStatus] ^definition = "The current status of the network's adequacy evaluation."
* extension[lastEvaluationDate].value[x] only date
* extension[lastEvaluationDate] ^short = "Date of last adequacy evaluation"
* extension[lastEvaluationDate] ^definition = "The date when the network adequacy was last evaluated."
* extension[providerToEnrolleeRatio].extension contains
    providerType 1..1 and
    ratio 1..1 and
    requiredRatio 0..1
* extension[providerToEnrolleeRatio].extension[providerType].value[x] only CodeableConcept
* extension[providerToEnrolleeRatio].extension[providerType].valueCodeableConcept from MedicaidProviderTypeVS (required)
* extension[providerToEnrolleeRatio].extension[providerType] ^short = "Provider type"
* extension[providerToEnrolleeRatio].extension[providerType] ^definition = "The type of provider for which the ratio is calculated."
* extension[providerToEnrolleeRatio].extension[ratio].value[x] only Ratio
* extension[providerToEnrolleeRatio].extension[ratio] ^short = "Provider to enrollee ratio"
* extension[providerToEnrolleeRatio].extension[ratio] ^definition = "The ratio of providers to enrollees in the network."
* extension[providerToEnrolleeRatio].extension[requiredRatio].value[x] only Ratio
* extension[providerToEnrolleeRatio].extension[requiredRatio] ^short = "Required provider to enrollee ratio"
* extension[providerToEnrolleeRatio].extension[requiredRatio] ^definition = "The required ratio of providers to enrollees as specified by the state Medicaid program."
* extension[timeDistanceStandard].extension contains
    providerType 1..1 and
    maxTime 1..1 and
    maxDistance 1..1 and
    percentMet 0..1
* extension[timeDistanceStandard].extension[providerType].value[x] only CodeableConcept
* extension[timeDistanceStandard].extension[providerType].valueCodeableConcept from MedicaidProviderTypeVS (required)
* extension[timeDistanceStandard].extension[providerType] ^short = "Provider type"
* extension[timeDistanceStandard].extension[providerType] ^definition = "The type of provider for which the time-distance standard is defined."
* extension[timeDistanceStandard].extension[maxTime].value[x] only Quantity
* extension[timeDistanceStandard].extension[maxTime].valueQuantity.system = "http://unitsofmeasure.org"
* extension[timeDistanceStandard].extension[maxTime].valueQuantity.code = #min
* extension[timeDistanceStandard].extension[maxTime] ^short = "Maximum travel time"
* extension[timeDistanceStandard].extension[maxTime] ^definition = "The maximum travel time to a provider of this type, as specified by the state Medicaid program."
* extension[timeDistanceStandard].extension[maxDistance].value[x] only Quantity
* extension[timeDistanceStandard].extension[maxDistance].valueQuantity.system = "http://unitsofmeasure.org"
* extension[timeDistanceStandard].extension[maxDistance].valueQuantity.code = #mi
* extension[timeDistanceStandard].extension[maxDistance] ^short = "Maximum travel distance"
* extension[timeDistanceStandard].extension[maxDistance] ^definition = "The maximum travel distance to a provider of this type, as specified by the state Medicaid program."
* extension[timeDistanceStandard].extension[percentMet].value[x] only decimal
* extension[timeDistanceStandard].extension[percentMet] ^short = "Percentage of enrollees meeting standard"
* extension[timeDistanceStandard].extension[percentMet] ^definition = "The percentage of enrollees who have access to a provider of this type within the specified time and distance standards."
* extension[specialtyAvailability].extension contains
    specialty 1..1 and
    available 1..1 and
    requiredCount 0..1 and
    actualCount 0..1
* extension[specialtyAvailability].extension[specialty].value[x] only CodeableConcept
* extension[specialtyAvailability].extension[specialty] ^short = "Specialty"
* extension[specialtyAvailability].extension[specialty] ^definition = "The specialty for which availability is being reported."
* extension[specialtyAvailability].extension[available].value[x] only boolean
* extension[specialtyAvailability].extension[available] ^short = "Specialty available"
* extension[specialtyAvailability].extension[available] ^definition = "Whether the specialty is available in the network."
* extension[specialtyAvailability].extension[requiredCount].value[x] only integer
* extension[specialtyAvailability].extension[requiredCount] ^short = "Required count"
* extension[specialtyAvailability].extension[requiredCount] ^definition = "The required number of providers of this specialty, as specified by the state Medicaid program."
* extension[specialtyAvailability].extension[actualCount].value[x] only integer
* extension[specialtyAvailability].extension[actualCount] ^short = "Actual count"
* extension[specialtyAvailability].extension[actualCount] ^definition = "The actual number of providers of this specialty in the network."
