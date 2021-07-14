Instance: ex-auditPixmFeed-source
InstanceOf: IHE.PIXm.Feed.Audit.Source
Title: "Audit Example of ITI-104 at Source"
Description: "Audit Event for PIXm Feed Transaction by the Patient Identifier Cross-reference Source"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://dicom.nema.org/resources/ontology/DCM#110110 "Patient Record"
* action = #C
* subtype = urn:ihe:event-type-code#ITI-104 "Mobile Patient Identifier Cross-reference Feed"
//* severity = #Informational
* recorded = 2021-07-11T19:17:32Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "fancy mobile app"
* source.observer = Reference(Device/ex-device)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#1 "User Device"
* agent[source].type = DCM#110153 "Source Role ID"
* agent[source].who = Reference(Device/ex-device)
* agent[source].requestor = false
* agent[source].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[source].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
// not clear how a server uses the IUA Oauth token here
* agent[destination].type = DCM#110152 "Destination Role ID"
* agent[destination].who.display = "http://server.example.com/fhir"
* agent[destination].requestor = false
* agent[destination].network.address = "http://server.example.com/fhir"
* agent[destination].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.identifier.system = "urn:oid:1.3.6.1.4.1.21367.13.20.1000"
* entity[patient].what.identifier.value = "IHERED-994"

Instance: ex-auditPixmFeed-manager
InstanceOf: IHE.PIXm.Feed.Audit.Manager
Title: "Audit Example of ITI-104 at Manager"
Description: "Audit Event for PIXm Feed Transaction by the Patient Identifier Cross-reference Manager"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://dicom.nema.org/resources/ontology/DCM#110110 "Patient Record"
* action = #C
* subtype = urn:ihe:event-type-code#ITI-104 "Mobile Patient Identifier Cross-reference Feed"
//* severity = #Informational
* recorded = 2021-07-11T19:17:32Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "HIE PIXm api example"
* source.observer.display = "http://server.example.com/fhir"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[source].type = DCM#110153 "Source Role ID"
* agent[source].who = Reference(Device/ex-device)
* agent[source].requestor = false
* agent[source].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[source].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
// not clear how a server uses the IUA Oauth token here
* agent[destination].type = DCM#110152 "Destination Role ID"
* agent[destination].who.display = "http://server.example.com/fhir"
* agent[destination].requestor = false
* agent[destination].network.address = "http://server.example.com/fhir"
* agent[destination].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.identifier.system = "urn:oid:1.3.6.1.4.1.21367.13.20.1000"
* entity[patient].what.identifier.value = "IHERED-994"