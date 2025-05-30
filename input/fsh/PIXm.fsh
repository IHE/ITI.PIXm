Profile:          PIXmPatient
Parent:           IHE.PDQm.Patient
Id:               IHE.PIXm.Patient
Title:            "PIXm Patient constraints for Feed"
Description:      "Profile using PDQM Patient"


Profile:          PIXmPatientBirthDateRequired
Parent:           IHE.PDQm.Patient
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
    targetSystem 0..* and
    _format 0..1
* parameter[sourceIdentifier] ^short = "sourceIdentifier"
* parameter[sourceIdentifier].name = "sourceIdentifier" (exactly)
* parameter[sourceIdentifier].valueString 1..1
* parameter[sourceIdentifier].value[x] only string
* parameter[targetSystem] ^short = "targetSystem"
* parameter[targetSystem].name = "targetSystem" (exactly)
* parameter[targetSystem].value[x] only string
* parameter[targetSystem].valueString 1..1
* parameter[_format] ^short = "_format"
* parameter[_format].name = "_format" (exactly)
* parameter[_format].value[x] only string
* parameter[_format].valueString 1..1

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
    targetIdentifier 0..* and
    targetId 0..*
* parameter[targetIdentifier] ^short = "targetIdentifier"
* parameter[targetIdentifier].name = "targetIdentifier" (exactly)
* parameter[targetIdentifier].value[x] 1..
* parameter[targetIdentifier].value[x] only Identifier
* parameter[targetIdentifier].value[x].system 1..
* parameter[targetIdentifier].value[x].system ^comment = "Both the value and system shall be populated. (See [IHE ITI TF-2 Z.9.1 Identifier Type](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type))"
* parameter[targetIdentifier].value[x].value 1..
* parameter[targetIdentifier].value[x].assigner ^short = "When the assigning authority name is provided, the actor shall also populate the assigner."
* parameter[targetIdentifier].value[x].assigner 0..1
* parameter[targetIdentifier].value[x].assigner.display 1..
* parameter[targetIdentifier].value[x].assigner.display ^short = "When the assigning authority name is provided, the actor shall also populate the display attribute."
* parameter[targetIdentifier].value[x].assigner.display ^comment = "When the assigning authority name is provided, the actor shall also populate the display attribute. (IHE [ITI TF-2: Appendix E.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html#E.3))"
* parameter[targetId].name = "targetId" (exactly)
* parameter[targetId].value[x] 1..
* parameter[targetId].value[x] only Reference(Patient)
* parameter[targetId].value[x] ^type.aggregation = #referenced
* parameter[targetId].value[x].reference 1..


Instance: IHE.PIXm.pix
InstanceOf: OperationDefinition
Title: "IHE PIXm $pix Operation"
Description: """
The OperationDefinition defines the In and Output Parameters for the $ihe-pix operation
- Input: sourceIdentifier, targetSystem and _format
- Output: targetIdentifier, targetId
This operation is used to retrieve identifiers associated with a Patient Resource from the Patient Identifier Cross-reference Manager.
"""
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 5
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use
* url = "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix"
* version = "3.0.5-current"
* name = "IHE_PIXm_pix"
* title = "Get Corresponding Identifiers Operation"
* status = #active
* kind = #operation
* date = "2022-05-25"
* affectsState = false
* publisher = "IHE IT Infrastructure Technical Committee"
* contact[0].telecom.system = #url
* contact[=].telecom.value = "https://www.ihe.net/ihe_domains/it_infrastructure/"
* contact[+].telecom.system = #email
* contact[=].telecom.value = "iti@ihe.net"
* contact[+].name = "IHE IT Infrastructure Technical Committee"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "iti@ihe.net"
* description = "The OperationDefinition defines the In and Output Parameters for the $ihe-pix operation\n - Input: sourceIdentifier, targetSystem and _format\n - Output: targetIdentifier, targetId"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* code = #ihe-pix
* resource = #Patient
* system = false
* type = true
* instance = false
//* inputProfile = "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In"
//* outputProfile = "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out"
* parameter[0].name = #sourceIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Patient identifier search parameter that will be used by the Patient Identifier Cross-reference Manager to find cross matching identifiers associated with the Patient Resource. See [Section 3.83.4.1.2.1](ITI-83.html#23834121-source-patient-identifier-parameter)."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #targetSystem
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The target Patient Identifier Assigning Authority from which the returned identifiers should be selected. See [Section 3.83.4.1.2.2](ITI-83.html#23834122-requesting-patient-identifier-domains-to-be-returned)."
* parameter[=].type = #string
* parameter[=].searchType = #uri
* parameter[+].name = #_format
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The requested format of the response. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format)"
* parameter[=].type = #string
* parameter[=].searchType = #token
// out
* parameter[+].name = #targetIdentifier
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The identifier found. Constraints to include the assigning authority as specified in [ITI TF-2: Appendix E.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html#E.3)"
* parameter[=].type = #Identifier
* parameter[+].name = #targetId
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The URL of the Patient Resource"
* parameter[=].type = #Reference