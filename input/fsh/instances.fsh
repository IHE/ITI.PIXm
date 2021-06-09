Instance: patient-example-dheeraj
InstanceOf: Patient
Title: "Patient/patient-example-dheeraj"
Description: "An example Patient to make dheeraj-example complete"
Usage: #example
* meta.security = $v3-ActReason#HTEST
* identifier[0].use = #official
* identifier[=].system = "urn:oid:2.16.840.1.113883.16.4.3.2.5"
* identifier[=].value = "123"
* identifier[+].use = #official
* identifier[=].system = "urn:oid:2.16.840.1.113883.16.4.3.2.5"
* identifier[=].value = "123"
* active = true
* name.use = #official
* name.family = "Dheeraj"
* name.given[0] = "Peter"
* name.given[+] = "James"
* gender = #male
* birthDate = "1974-12-25"

Instance: patient-example
InstanceOf: Patient
Title: "Patient/patient-example"
Description: "An example Patient to make examples complete"
Usage: #example
* meta.security = $v3-ActReason#HTEST

Instance: patient-example2
InstanceOf: Patient
Title: "Patient/patient-example2"
Description: "An example Patient to make examples complete"
Usage: #example
* meta.security = $v3-ActReason#HTEST

Instance: 1234567890
InstanceOf: Parameters
Title: "dheeraj-example"
Description: "An example of a use of the PIXm operation"
Usage: #example
* parameter[0].name = "targetIdentifier"
* parameter[=].valueIdentifier.use = #official
* parameter[=].valueIdentifier.system = "urn:oid:2.16.840.1.113883.16.4.3.2.5"
* parameter[=].valueIdentifier.value = "123"
* parameter[+].name = "targetIdentifier"
* parameter[=].valueIdentifier.use = #official
* parameter[=].valueIdentifier.system = "urn:oid:2.16.840.1.113883.16.4.3.2.5"
* parameter[=].valueIdentifier.value = "123"
* parameter[+].name = "targetId"
* parameter[=].valueReference = Reference(patient-example-dheeraj)