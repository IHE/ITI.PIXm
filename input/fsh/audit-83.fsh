
Invariant: val-audit-source
Description: "The Audit Source is this agent too."
Expression: "$this.who = %resource.source.observer"
Severity: #error



Profile:        AuditPixmQueryConsumer
Parent:         IHE.BasicAudit.PatientQuery
Id:             IHE.PIXm.Query.Audit.Consumer
Title:          "Audit Event for PIXm Query by the Consumer"
Description:    """
Defines constraints on the AuditEvent Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Consumer.
- Build off of the IHE BasicAudit PatientQuery event
- override type as Query as this is not REST
- add the ITI-83 as a subtype
- client is Patient Identifier Cross-reference Consumer
- server is Patient Identifier Cross-reference Manager
- entity slices for query, and patient are required
- entity slice for transaction is available
"""
* modifierExtension 0..0
* type = DCM#110112 "Query"
* subtype 2..
* subtype contains iti83 1..1
* subtype[iti83] = urn:ihe:event-type-code#ITI-83 "Mobile Patient Identifier Cross-reference Query" (exactly)
* agent[client] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Cross-reference Consumer"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "sourceIdentifier Patient"
* entity[query] ^short = "Search Parameters"






Profile:        AuditPixmQueryManager
Parent:         IHE.BasicAudit.PatientQuery
Id:             IHE.PIXm.Query.Audit.Manager
Title:          "Audit Event for PIXm Query by the Manager"
Description:    """
Defines constraints on the AuditEvent Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.
- Build off of the IHE BasicAudit PatientQuery event
- override type as Query as this is not REST
- add the ITI-83 as a subtype
- client is Patient Identifier Cross-reference Consumer
- server is Patient Identifier Cross-reference Manager
- entity slices for query, and patient are required
- entity slice for transaction is available
"""
* modifierExtension 0..0
* type = DCM#110112 "Query"
* subtype 2..
* subtype contains iti83 1..1
* subtype[iti83] = urn:ihe:event-type-code#ITI-83 "Mobile Patient Identifier Cross-reference Query" (exactly)
* agent[server] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Cross-reference Consumer"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "sourceIdentifier Patient"
* entity[query] ^short = "Search Parameters"