Profile:          PIXmPatient
Parent:           IHE.PDQm.Patient
Id:               IHE.PIXm.Patient
Title:            "PIXm Patient constraints for Feed"
Description:      "Profile for describing elements which have to be accepted by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.
- requiring name
- mustSupport for identifier, name, telecom, gender birthDate, address and managingOrganization"
* modifierExtension 0..0
* identifier 1..* MS
* name 1..* MS
* telecom 0..* MS
* gender 0..1 MS
* birthDate 0..1 MS
* address 0..* MS
* managingOrganization 0..1 MS

Profile:          PIXmPatientBirthDateRequired
Parent:           PIXmPatient
Id:               IHE.PIXm.Patient.BirthDateRequired
Title:            "PIXm Patient Profile example for additional Manager constraints"
Description:      "Example Profile StructureDefinition for describing additional Patient resource constraints (requiring birthDate) by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.
- requiring name and birthDate
- mustSupport for identifier, birthDate, name, telecom, gender birthDate, address and managingOrganization"
* birthDate 1..1 MS

Profile: PIXmQueryParametersIn
Parent: Parameters
Id: IHE.PIXm.Query.Parameters.In
Title: "IHE PIXm Query Parameters In"
Description: "The StructureDefinition defines the Input Parameters for the $ihe-pix operation
- Input: sourceIdentifier, targetSystem"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.description = "allowed parameters are sourceIdentifier, targetSystem and _format"
* parameter ^slicing.rules = #open
* parameter contains
    sourceIdentifier 1..1 and
    targetSystem 0..*
* parameter[sourceIdentifier] ^short = "sourceIdentifier"
* parameter[sourceIdentifier].name = "sourceIdentifier" (exactly)
* parameter[sourceIdentifier].valueIdentifier 1..
* parameter[sourceIdentifier].valueIdentifier only Identifier
* parameter[sourceIdentifier].valueIdentifier.system 1..
* parameter[sourceIdentifier].valueIdentifier.value 1..
* parameter[targetSystem] ^short = "targetSystem"
* parameter[targetSystem].name = "targetSystem" (exactly)
* parameter[targetSystem].valueUri 0..
* parameter[targetSystem].valueUri only uri

Profile: PIXmQueryParametersOut
Parent: Parameters
Id: IHE.PIXm.Query.Parameters.Out
Title: "IHE PIXm Query Parameters Out"
Description: "The StructureDefinition defines the Output Parameters for the $ihe-pix operation
- Output: targetId, targetIdentifier"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.description = "allowed parameters are targetId and targetIdentifier"
* parameter ^slicing.rules = #open
* parameter contains
    targetId 0..* and
    targetIdentifier 0..*
* parameter[targetId].name = "targetId" (exactly)
* parameter[targetId].value[x] 1..
* parameter[targetId].value[x] only Reference(Patient)
* parameter[targetId].value[x] ^type.aggregation = #referenced
* parameter[targetId].value[x].reference 1..
* parameter[targetIdentifier] ^short = "targetIdentifier"
* parameter[targetIdentifier].name = "targetIdentifier" (exactly)
* parameter[targetIdentifier].value[x] 1..
* parameter[targetIdentifier].value[x] only Identifier
* parameter[targetIdentifier].value[x].system 1..
* parameter[targetIdentifier].value[x].system ^comment = "Both the value and system shall be populated. (IHE ITI TF-2 Z.9.1 Identifier Type)"
* parameter[targetIdentifier].value[x].value 1..
* parameter[targetIdentifier].value[x].assigner ^short = "When the assigning authority name is provided, the actor shall also populate the assigner."
* parameter[targetIdentifier].value[x].assigner 0..1
* parameter[targetIdentifier].value[x].assigner.display 1..
* parameter[targetIdentifier].value[x].assigner.display ^short = "When the assigning authority name is provided, the actor shall also populate the display attribute."
* parameter[targetIdentifier].value[x].assigner.display ^comment = "When the assigning authority name is provided, the actor shall also populate the display attribute. (IHE ITI TF-2 E3 FHIR Identifier Type)"
