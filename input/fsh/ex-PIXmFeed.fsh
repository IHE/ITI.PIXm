Instance:         ex-PIXmBundle-Example-Merge
InstanceOf:       IHE.PIXm.Bundle
Title:            "IHE PIXm Feed Message Bundle Merge Example"
Usage:            #example
* type = #message
* entry[PIXmMessageHeaderEntry].fullUrl = "http://example.com/fhir/MessageHeader/1"
* entry[PIXmMessageHeaderEntry].resource.resourceType = "MessageHeader"
* entry[PIXmMessageHeaderEntry].resource.id = "1"
* entry[PIXmMessageHeaderEntry].resource.eventUri = "urn:ihe:iti:PIXm:2019:patient-feed"
* entry[PIXmMessageHeaderEntry].resource.source.endpoint = "http://example.com/patientSource"
* entry[PIXmMessageHeaderEntry].resource.focus = Reference(Bundle/abc)
* entry[PIXmMessageHeaderEntry].resource.destination.endpoint = "http://example.com/patientEndpoint"
* entry[PIXmBundleHistoryEntry].fullUrl = "http://example.com/fhir/Bundle/abc"
* entry[PIXmBundleHistoryEntry].resource.resourceType = "Bundle"
* entry[PIXmBundleHistoryEntry].resource.id = "abc"
* entry[PIXmBundleHistoryEntry].resource.type = #history
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].fullUrl = "http://example.com/fhir/Patient/123"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.resourceType = "Patient"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.id = "123"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.active = false
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.link.other = Reference(http://example.com/fhir/Patient/456)
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.link.type = #replaced-by
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].request.method = #PUT
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].request.url = "Patient/123"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].response.status = "200"

Instance:         ex-PIXmBundle-Example-Create
InstanceOf:       IHE.PIXm.Bundle
Title:            "IHE PIXm Feed Message Bundle Create Example"
Usage:            #example
* type = #message
* entry[PIXmMessageHeaderEntry].fullUrl = "http://example.com/fhir/MessageHeader/2"
* entry[PIXmMessageHeaderEntry].resource.resourceType = "MessageHeader"
* entry[PIXmMessageHeaderEntry].resource.id = "2"
* entry[PIXmMessageHeaderEntry].resource.eventUri = "urn:ihe:iti:PIXm:2019:patient-feed"
* entry[PIXmMessageHeaderEntry].resource.source.endpoint = "http://example.com/patientSource"
* entry[PIXmMessageHeaderEntry].resource.focus = Reference(Bundle/a)
* entry[PIXmMessageHeaderEntry].resource.destination.endpoint = "http://example.com/patientEndpoint"
* entry[PIXmBundleHistoryEntry].fullUrl = "http://example.com/fhir/Bundle/a"
* entry[PIXmBundleHistoryEntry].resource.resourceType = "Bundle"
* entry[PIXmBundleHistoryEntry].resource.id = "a"
* entry[PIXmBundleHistoryEntry].resource.type = #history
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].fullUrl = "urn:uuid:14298d90-b285-4c4c-8252-5d4e7bb5fdb6"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.resourceType = "Patient"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.active = true
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.name.use = #official
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.name.family = "Riegel"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.name.given[0] = "David"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.name.given[1] = "A."
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.gender = #male
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.birthDate = "1985-07-12"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.telecom[0].use = #work
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.telecom[0].system = #phone
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.telecom[0].value = "+1-734-942-9512"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.telecom[1].use = #work
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.telecom[1].system = #email
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.telecom[1].value = "DavidARiegel@jourrapide.com"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].use = #home
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].type = #both
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].line[0] = "4512 Bombardier Way"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].city = "Romulus"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].state = "MI"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].postalCode = "48174"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].country = "US"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].resource.address[0].text = "4512 Bombardier Way\nRomulus, MI 48174"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].request.method = #POST
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].request.url = "Patient"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].response.status = "201"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][0].response.location = "Patient/111/-history/1"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].fullUrl = "urn:uuid:95e1726c-9c3c-4de3-bebc-15daed6b6d34"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.resourceType = "Patient"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.active = true
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.name.use = #official
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.name.family = "Wooten"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.name.given[0] = "Lucille"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.name.given[1] = "T."
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.gender = #female
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.birthDate = "1971-12-14"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.telecom[0].use = #work
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.telecom[0].system = #phone
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.telecom[0].value = "+1-570-508-4343"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.telecom[1].use = #work
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.telecom[1].system = #email
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.telecom[1].value = "LucilleTWooten@teleworm.us"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].use = #home
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].type = #both
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].line[0] = "3799 High Meadow Lane"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].city = "Scranton"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].state = "PA"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].postalCode = "18503"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].country = "US"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].resource.address[0].text = "3799 High Meadow Lane\nScranton, PA 18503"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].request.method = #POST
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].request.url = "Patient"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].response.status = "201"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry][1].response.location = "Patient/222/-history/1"

Instance:         ex-PIXmBundle-Example-Update
InstanceOf:       IHE.PIXm.Bundle
Title:            "IHE PIXm Feed Message Bundle Update Example"
Usage:            #example
* type = #message
* entry[PIXmMessageHeaderEntry].fullUrl = "http://example.com/fhir/MessageHeader/3"
* entry[PIXmMessageHeaderEntry].resource.resourceType = "MessageHeader"
* entry[PIXmMessageHeaderEntry].resource.id = "3"
* entry[PIXmMessageHeaderEntry].resource.eventUri = "urn:ihe:iti:PIXm:2019:patient-feed"
* entry[PIXmMessageHeaderEntry].resource.source.endpoint = "http://example.com/patientSource"
* entry[PIXmMessageHeaderEntry].resource.focus = Reference(Bundle/b)
* entry[PIXmMessageHeaderEntry].resource.destination.endpoint = "http://example.com/patientEndpoint"
* entry[PIXmBundleHistoryEntry].fullUrl = "http://example.com/fhir/Bundle/b"
* entry[PIXmBundleHistoryEntry].resource.resourceType = "Bundle"
* entry[PIXmBundleHistoryEntry].resource.id = "b"
* entry[PIXmBundleHistoryEntry].resource.type = #history
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].fullUrl = "http://example.com/fhir/Patient/111"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.resourceType = "Patient"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.id = "111"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.active = true
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.name.use = #official
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.name.family = "Riegel"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.name.given[0] = "David"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.name.given[1] = "A."
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.gender = #male
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.birthDate = "1985-07-12"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.telecom[0].use = #work
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.telecom[0].system = #phone
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.telecom[0].value = "+1-812-863-3613"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.telecom[1].use = #work
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.telecom[1].system = #email
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.telecom[1].value = "DavidARiegel@jourrapide.com"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].use = #home
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].type = #both
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].line[0] = "4392 Stratford Park"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].city = "Owensburg"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].state = "IN"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].postalCode = "47453"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].country = "US"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].resource.address[0].text = "4392 Stratford Park\nOwensburg, IN 47453"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].request.method = #PUT
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].request.url = "Patient/111"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].response.status = "200"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].response.location = "Patient/111/-history/2"

Instance:         ex-PIXmBundle-Example-Delete
InstanceOf:       IHE.PIXm.Bundle
Title:            "IHE PIXm Feed Message Bundle Delete Example"
Usage:            #example
* type = #message
* entry[PIXmMessageHeaderEntry].fullUrl = "http://example.com/fhir/MessageHeader/4"
* entry[PIXmMessageHeaderEntry].resource.resourceType = "MessageHeader"
* entry[PIXmMessageHeaderEntry].resource.id = "4"
* entry[PIXmMessageHeaderEntry].resource.eventUri = "urn:ihe:iti:PIXm:2019:patient-feed"
* entry[PIXmMessageHeaderEntry].resource.source.endpoint = "http://example.com/patientSource"
* entry[PIXmMessageHeaderEntry].resource.focus = Reference(Bundle/c)
* entry[PIXmMessageHeaderEntry].resource.destination.endpoint = "http://example.com/patientEndpoint"
* entry[PIXmBundleHistoryEntry].fullUrl = "http://example.com/fhir/Bundle/c"
* entry[PIXmBundleHistoryEntry].resource.resourceType = "Bundle"
* entry[PIXmBundleHistoryEntry].resource.id = "c"
* entry[PIXmBundleHistoryEntry].resource.type = #history
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].fullUrl = "http://example.com/fhir/Patient/111"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].request.method = #DELETE
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].request.url = "Patient/111"
* entry[PIXmBundleHistoryEntry].resource.entry[PIXmPatientEntry].response.status = "202"