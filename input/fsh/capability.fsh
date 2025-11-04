Instance: IHE.PIXm.Manager
InstanceOf: CapabilityStatement
Title: "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Manager (server)"
Description: """
The [Patient Identifier Cross-reference Manager Actor](volume-1.html#141113-patient-identifier-cross-reference-manager) CapabililtyStatement expresses the requirements that shall be provided.

- using FHIR R4
- using json and xml encoding
- support for [ITI-83](ITI-83.html) the $ihe-pix operation
- support conditional update for [ITI-104]
- support conditional delete for [ITI-104] if Remove Patient Option is supported
- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
"""
Usage: #definition
* url = "https://profiles.ihe.net/ITI/PIXm/CapabilityStatement/IHE.PIXm.Manager"
* name = "IHE_PIXm_Manager"
* title = "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Manager (server)"
* date = "2025-05-30T13:12:36-06:00"
* status = #active
* experimental = false
* fhirVersion = #4.0.1
* description = """
The [Patient Identifier Cross-reference Manager Actor](volume-1.html#141113-patient-identifier-cross-reference-manager) CapabililtyStatement expresses the requirements that shall be provided.

- using FHIR R4
- using json and xml encoding
- support for [ITI-83](ITI-83.html) the $ihe-pix operation
- support conditional update for [ITI-104]
- support conditional delete for [ITI-104] if Remove Patient Option is supported
- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
"""
* kind = #requirements
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server
* rest.documentation = "PIXm server provides capability to query for Patient Identity Cross-reference matching a query parameters"
* rest.security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
* rest.resource.type = #Patient
* rest.resource.supportedProfile = "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
* rest.resource.interaction[0].code = #update
* rest.resource.interaction[=].documentation = "conditional update for [ITI-104]"
* rest.resource.interaction[+].code = #delete
* rest.resource.interaction[=].documentation = "conditional delete for [ITI-104] for Remove Patient Option"
* rest.resource.conditionalCreate = true
* rest.resource.conditionalUpdate = true
* rest.resource.conditionalDelete = #single
* rest.resource.operation.name = "$ihe-pix"
* rest.resource.operation.definition = "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix"



Instance: IHE.PIXm.Consumer
InstanceOf: CapabilityStatement
Title: "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)"
Description: """
The [Patient Identifier Cross-reference Consumer Actor](volume-1.html#141112-patient-identifier-cross-reference-consumer) CapabililtyStatement expresses the requirements that can be utilized while being compliant.

- using FHIR R4
- using json or xml encoding
- [ITI-83](ITI-83.html) the $ihe-pix operation
- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
"""
Usage: #definition
* url = "https://profiles.ihe.net/ITI/PIXm/CapabilityStatement/IHE.PIXm.Consumer"
* name = "IHE_PIXm_Consumer"
* title = "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)"
* date = "2025-05-30T13:12:36-06:00"
* status = #active
* experimental = false
* fhirVersion = #4.0.1
* description = """
The [Patient Identifier Cross-reference Consumer Actor](volume-1.html#141112-patient-identifier-cross-reference-consumer) CapabililtyStatement expresses the requirements that can be utilized while being compliant.

- using FHIR R4
- using json or xml encoding
- [ITI-83](ITI-83.html) the $ihe-pix operation
- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
"""
* kind = #requirements
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #client
* rest.documentation = "PIXm client queries for Patient Identity Cross-reference matching a query parameters"
* rest.security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
* rest.resource.type = #Patient
* rest.resource.operation.name = "$ihe-pix"
* rest.resource.operation.definition = "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix"


Instance: IHE.PIXm.Source
InstanceOf: CapabilityStatement
Title: "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Source (client)"
Description: """
The [Patient Identity Source Actor](volume-1.html#141111-patient-identity-source) CapabililtyStatement expresses the requirements that can be utilized while being compliant.

- using FHIR R4
- using json or xml encoding
- using conditional update for [ITI-104](ITI-104.html)
- using conditional delete for [ITI-104](ITI-104.html) if Remove Patient Option is supported
- provide supported Patient profile for crosss-referencing for [ITI-104](ITI-104.html)
- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
"""
Usage: #definition
* url = "https://profiles.ihe.net/ITI/PIXm/CapabilityStatement/IHE.PIXm.Source"
* name = "IHE_PIXm_Source"
* title = "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Source (client)"
* date = "2025-05-30T13:12:36-06:00"
* status = #active
* experimental = false
* fhirVersion = #4.0.1
* description = """
The [Patient Identity Source Actor](volume-1.html#141111-patient-identity-source) CapabililtyStatement expresses the requirements that can be utilized while being compliant.

- using FHIR R4
- using json or xml encoding
- using conditional update for [ITI-104](ITI-104.html)
- using conditional delete for [ITI-104](ITI-104.html) if Remove Patient Option is supported
- provide supported Patient profile for crosss-referencing for [ITI-104](ITI-104.html)
- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
"""
* kind = #requirements
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #client
* rest.documentation = "The PIXm Source is the producer and publisher of patient identity data."
* rest.security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
* rest.resource.type = #Patient
* rest.resource.supportedProfile = "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
* rest.resource.interaction[0].code = #update
* rest.resource.interaction[=].documentation = "conditional update for [ITI-104]"
* rest.resource.interaction[+].code = #delete
* rest.resource.interaction[=].documentation = "conditional delete for [ITI-104] for Remove Patient Option"
* rest.resource.conditionalUpdate = true
* rest.resource.conditionalDelete = #single

