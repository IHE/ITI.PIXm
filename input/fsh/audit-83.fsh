Profile:        AuditPixmQueryConsumer
Parent:         IHE.BasicAudit.PatientQuery
Id:             IHE.PIXm.Query.Audit.Consumer
Title:          "Audit Event for PIXm Query by the Consumer"
Description:    """
Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Consumer.
- Build off of the IHE BasicAudit Patient Query event
- add the ITI-83 as a subtype
- client is Patient Identifier Cross-reference Consumer
- server is Patient Identifier Cross-reference Manager
- entity slice for query parameters
- eitity slice for a source patient identifier
- yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format
- source is the client
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti83 1..1
* subtype[iti83] = urn:ihe:event-type-code#ITI-83 "Mobile Patient Identifier Cross-reference Query" (exactly)
* agent[client] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Cross-reference Consumer"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[query] ^short = "Search Parameters"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[patient].what.identifier 1..1
* entity[patient] ^short = "Patient"

Invariant: val-audit-source
Description: "The Audit Source is this agent too."
Expression: "$this.who = %resource.source.observer"
Severity: #error

Profile:        AuditPixmQueryManager
Parent:         IHE.BasicAudit.PatientQuery
Id:             IHE.PIXm.Query.Audit.Manager
Title:          "Audit Event for PIXm Query by the Manager"
Description:    """
Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.
- Build off of the IHE BasicAudit Patient Query event
- add the ITI-83 as a subtype
- client is Patient Identifier Cross-reference Consumer
- server is Patient Identifier Cross-reference Manager
- entity slice for query parameters
- eitity slice for a source patient identifier
- yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format
- source is the server
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti83 1..1
* subtype[iti83] = urn:ihe:event-type-code#ITI-83 "Mobile Patient Identifier Cross-reference Query" (exactly)
* agent[server] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Cross-reference Consumer"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[query] ^short = "Search Parameters"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[patient].what.identifier 1..1
* entity[patient] ^short = "Patient"

