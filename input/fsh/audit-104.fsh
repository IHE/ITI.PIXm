Profile:        AuditPixmFeedSource
Parent:         AuditEvent
Id:             IHE.PIXm.Feed.Audit.Source
Title:          "Audit Event for PIXm Feed by the Source"
Description:    "Defines constraints on the AuditEvent Resource to record when a PIXm Feed Transaction happens, as recorded by the Patient Identifier Cross-reference Source.
- Feed event
- shall have the source as itself
- shall have a destination
- may have user, app, organization agent(s)
- shall have a source patient identifier"
* modifierExtension 0..0
* type = DCM#110110 "Patient Record"
* action ^short = "C (create) , U (update), or D (delete) as appropriate"
* subtype = urn:ihe:event-type-code#ITI-104 "Mobile Patient Identifier Cross-reference Feed"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, manager, and possibly the user who participated"
* agent contains 
	source 1..1 and
	destination 1..1 
	// may be many including app identity, user identity, etc
* agent[source].type = DCM#110153 "Source Role ID"
* agent[source].who 1..1
* agent[source] obeys val-audit-source
* agent[source].network 1..1
* agent[destination].type = DCM#110152 "Destination Role ID"
* agent[destination].who 1..1
* agent[destination].network 1..1
* entity 1..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient involved"
* entity contains
	patient 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what.identifier 1..1


Profile:        AuditPixmFeedManager
Parent:         AuditEvent
Id:             IHE.PIXm.Feed.Audit.Manager
Title:          "Audit Event for PIXm Feed by the Manager"
Description:    "Defines constraints on the AuditEvent Resource to record when a PIXm Feed Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.
- Feed event
- shall have the source as itself
- shall have a destination
- may have user, app, organization agent(s)
- shall have a source patient identifier"
* modifierExtension 0..0
* type = DCM#110110 "Patient Record"
* action ^short = "C (create) , U (update), or D (delete) as appropriate"
* subtype = urn:ihe:event-type-code#ITI-104 "Mobile Patient Identifier Cross-reference Feed"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, manager, and possibly the user who participated"
* agent contains 
	source 1..1 and
	destination 1..1 
	// may be many including app identity, user identity, etc
* agent[source].type = DCM#110153 "Source Role ID"
* agent[source].who 1..1
* agent[source].network 1..1
* agent[destination].type = DCM#110152 "Destination Role ID"
* agent[destination].who 1..1
* agent[destination] obeys val-audit-source
* agent[destination].network 1..1
* entity 1..1
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient involved"
* entity contains
	patient 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what.identifier 1..1