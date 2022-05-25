Instance: ex-auditPixmFeed-source
InstanceOf: IHE.PIXm.Feed.Update.Audit.Source
Title: "Audit Example of ITI-104 at Source"
Description: "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 by the Patient Identity Source"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest "Restful Operation"
* action = #U
* subtype[anyUpdate] = http://hl7.org/fhir/restful-interaction#update "update"
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
//* severity = #Informational
* recorded = 2021-07-11T19:17:32Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "fancy mobile app"
* source.observer = Reference(Device/ex-device)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#1 "User Device"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].who = Reference(Device/ex-device)
* agent[client].requestor = false
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
// not clear how a server uses the IUA Oauth token here
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].who.display = "http://server.example.com/fhir"
* agent[server].requestor = false
* agent[server].network.address = "http://server.example.com/fhir"
* agent[server].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.identifier.system = "urn:oid:1.3.6.1.4.1.21367.13.20.1000"
* entity[patient].what.identifier.value = "IHERED-994"
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
* entity[data].what = Reference(Patient/ex-patient)

Instance: ex-auditPixmFeed-manager
InstanceOf: IHE.PIXm.Feed.Create.Audit.Manager
Title: "Audit Example of ITI-104 at Manager"
Description: "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 by the Patient Identifier Cross-reference Manager. The Feed resulted in a Create of a Patient given the feed content, as the given parameter did not previously exist."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest "Restful Operation"
* action = #C
* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
//* severity = #Informational
* recorded = 2021-07-11T19:17:32Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "HIE PIXm api example"
* source.observer.display = "http://server.example.com/fhir"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].who = Reference(Device/ex-device)
* agent[client].requestor = false
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
// not clear how a server uses the IUA Oauth token here
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].who.display = "http://server.example.com/fhir"
* agent[server].requestor = false
* agent[server].network.address = "http://server.example.com/fhir"
* agent[server].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.identifier.system = "urn:oid:1.3.6.1.4.1.21367.13.20.1000"
* entity[patient].what.identifier.value = "IHERED-994"
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
* entity[data].what = Reference(Patient/ex-patient)
