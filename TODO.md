TBD:
[ ] Profile for which elements are necessary to do a patent identity feed -> [ITI-105] ? Do we need that as a seperate transaction? proposed text is to put it in the capability statement as a supportedProfile. it could be also queried from the FHIR server: StructureDefinition?base=http://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient
[ ] Naming conflict [ITI-93] and [ITI-104] : Mobile Patient Identity Feed [ITI-93] -> Mobile Patient Identifier Cross-Reference Feed [ITI-104]
[ ] Add to [ITI-104] transaction the Delete Patient operation -> Optional because of PIX V2, V3 grouping
[ ] ITI TF-2x: Appendix E.3 is referenced by [ITI-83] but there is no E.3 listed: https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html
[ ] #### 2:3.83.5.1 Security Audit Considerations -> should this not be defined on a FHIR AuditEvent resources
[ ] #### ITI-104 Security Audit Considerations needs to be added