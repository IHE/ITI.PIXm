Profile:          PIXmBundle
Parent:           Bundle
Id:               IHE.PIXm.Bundle
Title:            "IHE PIXm Feed Message Bundle"
Description:      "StructureDefinition for Bundle resource constraints in the IHE PIXm Profile.  The IHE PIXm Profile text is Normative, this conformance resource is Informative."
* type = #message
* entry 2..2
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.ordered = true
* entry contains 
      PIXmMessageHeaderEntry 1..1 and 
      PIXmBundleHistoryEntry 1..1
* entry[PIXmMessageHeaderEntry].fullUrl 1..1
* entry[PIXmMessageHeaderEntry].resource only PIXmMessageHeader
* entry[PIXmBundleHistoryEntry].fullUrl 1..1
* entry[PIXmBundleHistoryEntry].resource only PIXmBundleHistory

Profile:          PIXmMessageHeader
Parent:           MessageHeader
Id:               IHE.PIXm.MessageHeader
Title:            "IHE PIXm Feed MessageHeader"
Description:      "StructureDefinition for MessageHeader resource constraints in the IHE PIXm Profile.  The IHE PIXm Profile text is Normative, this conformance resource is Informative."
* event[x] only uri
* eventUri = "urn:ihe:iti:PIXm:2019:patient-feed"
* destination 1..*
* focus 1..1
* focus only Reference(PIXmBundleHistory)
* sender ^requirements = "Required if known"
* enterer ^requirements = "Required if known"
* author ^requirements = "Required if known"
* responsible ^requirements = "Required if known"


Profile:          PIXmBundleHistory
Parent:           Bundle
Id:               IHE.PIXm.BundleHistory
Title:            "IHE PIXm Feed Bundle Message"
Description:      "StructureDefinition for Bundle resource constraints for messages in the IHE PIXm Profile.  The IHE PIXm Profile text is Normative, this conformance resource is Informative."
* type = #history
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains PIXmPatientEntry 1..*
* entry[PIXmPatientEntry].resource only Patient
* entry[PIXmPatientEntry].request 1..1
* entry[PIXmPatientEntry].request.method 1..1
* entry[PIXmPatientEntry].response 1..1
* entry[PIXmPatientEntry].response.status 1..1

