Profile:        AuditPixmFeedSourceUpdate
Parent:         IHE.BasicAudit.PatientUpdate
Id:             IHE.PIXm.Feed.Update.Audit.Source
Title:          "Audit Event for Patient Identity Feed by the Source that Creates or Updates a Patient"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source.
- This profile applies to the Patient Identity Source actor in 
  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)
  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)
- Patient Identity Source records an Update as using a conditional create, so as to support update if exists else create.
- Build off of the IHE BasicAudit PatientUpdate event
- add the ITI-104 as a subtype
- client is Patient Identifier Source
- server is Patient Identifier Cross-reference Manager
- entity slices for patient are required
  - filled with the identifier parameter value from the PUT
  - will be an identifier, not a reference
- entity slice for the data
  - filled with the body of the PUT
  - will be the Patient resource presented
- entity slice for transaction is available
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti104 1..1
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Source"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "identifier parameter - Patient"
* entity[patient].what.identifier 1..1
* entity[patient].what.reference 0..0
* entity[data] ^short = "transaction body"




Profile:        AuditPixmFeedManagerCreate
Parent:         IHE.BasicAudit.PatientCreate
Id:             IHE.PIXm.Feed.Create.Audit.Manager
Title:          "Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.
- This profile applies to the Patient Identity Cross-reference Manager actor in 
  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)
  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)
- Patient Identity Cross-reference Manager knows the requested conditional create is a create, so records this as an create.
- Build off of the IHE BasicAudit PatientCreate event
  - A generic FHIR server might not distinguish an ITI-104 
- add the ITI-104 as a subtype
- server is Patient Identifier Source
- server is Patient Identifier Cross-reference Manager
- entity slices for patient are required
  - filled with the identifier parameter value from the PUT
  - will be an identifier, not a reference
- entity slice for the data
  - filled with the body of the PUT
  - will be the Patient resource presented
- entity slice for transaction is available
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti104 1..1
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Source"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "identifier parameter - Patient"
* entity[patient].what.identifier 1..1
* entity[patient].what.reference 0..0
* entity[data] ^short = "transaction body"




Profile:        AuditPixmFeedManagerUpdate
Parent:         IHE.BasicAudit.PatientUpdate
Id:             IHE.PIXm.Feed.Update.Audit.Manager
Title:          "Audit Event for Patient Identity Feed FHIR by the Manager that Updates a Patient"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.
- This profile applies to the Patient Identity Cross-reference Manager actor in 
  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)
  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)
- Patient Identity Cross-reference Manager knows the requested conditional create is an update, so records this as an update.
- Build off of the IHE BasicAudit PatientUpdate event
  - A generic FHIR server might not distinguish an ITI-104 
- add the ITI-104 as a subtype
- server is Patient Identifier Source
- server is Patient Identifier Cross-reference Manager
- entity slices for patient are required
  - filled with the identifier parameter value from the PUT
  - will be an identifier, not a reference
- entity slice for the data
  - filled with the body of the PUT
  - will be the Patient resource presented
- entity slice for transaction is available
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti104 1..1
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Source"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "identifier parameter - Patient"
* entity[patient].what.identifier 1..1
* entity[patient].what.reference 0..0
* entity[data] ^short = "transaction body"




Profile:        AuditPixmFeedSourceDelete
Parent:         IHE.BasicAudit.PatientDelete
Id:             IHE.PIXm.Feed.Delete.Audit.Source
Title:          "Audit Event for Patient Identity Feed by the Source that Deletes a Patient"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source. 
- This profile applies to the Patient Identity Source actor in 
  - [Remove Patient](ITI-104.html#2310443-remove-patient)
- Build off of the IHE BasicAudit PatientDelete event
  - this will result in two .entity elements with the same logical information
- add the ITI-104 as a subtype
- client is Patient Identifier Source
- server is Patient Identifier Cross-reference Manager
- entity slices for patient are required
  - filled with the identifier parameter value from the DELETE
  - will be an identifier, not a reference
- entity slice for the data
  - filled with the path of the DELETE
  - will be the Patient resource id presented
- entity slice for transaction is available
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti104 1..1
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Source"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "identifier parameter - Patient"
* entity[patient].what.identifier 1..1
* entity[patient].what.reference 0..0
* entity[data] ^short = "Resource id from the DELETE path"
* entity[data].what.reference 1..1




Profile:        AuditPixmFeedManagerDelete
Parent:         IHE.BasicAudit.PatientDelete
Id:             IHE.PIXm.Feed.Delete.Audit.Manager
Title:          "Audit Event for Patient Identity Feed by the Manager that Deletes a Patient"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Cross-reference Manager. 
- This profile applies to the Patient Identity Cross-reference Manager actor in 
  - [Remove Patient](ITI-104.html#2310443-remove-patient)
- Build off of the IHE BasicAudit PatientDelete event
  - this will result in two .entity elements with the same logical information
- add the ITI-104 as a subtype
- client is Patient Identifier Source
- server is Patient Identifier Cross-reference Manager
- entity slices for patient are required
  - filled with the identifier parameter value from the DELETE
  - will be an identifier, not a reference
- entity slice for the data
  - filled with the path of the DELETE
  - will be the Patient resource id presented
- entity slice for transaction is available
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti104 1..1
* subtype[iti104] = urn:ihe:event-type-code#ITI-104 "Patient Identity Feed FHIR"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Patient Identifier Source"
* agent[server] ^short = "Patient Identifier Cross-reference Manager"
* entity[patient] ^short = "identifier parameter - Patient"
* entity[patient].what.identifier 1..1
* entity[patient].what.reference 0..0
* entity[data] ^short = "Resource id from the DELETE path"
* entity[data].what.reference 1..1

