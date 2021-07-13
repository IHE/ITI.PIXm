# Summary 

## changes from [PIXm, December 5, 2019](https://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PIXm.pdf):
- IG menu equivalent to IHE MHD IG
- Volume 1 Update Use Cases and introduce PIXm Feed
- Volume 2 ITI-83  
  - Added Parameter StructureDefinitions for $pixm operation
  - Added Security Audit Considerations with AuditEvent profile / resource
  - Added IHE Connectathon Sample for ITI-83
- Volume 2 ITI-104
   - New Mobile Patient Identifier Cross-Reference Feed [ITI-104] Transaction
   - Added the Delete Patient operation, optional to allow grouping or acting as facade with PIX V2, V3
   - Added IHE Connectathon samples ITI-104

## Open Issues
- ITI-83 references E.3 which is in [pdf](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=16), see also [github issue](https://github.com/IHE/publications/issues/110)

## List of questions to ask for the public review:
- For the [ITI-104] Mobile Patient Identifier Cross-Reference Feed is is proposed to use a RESTFul approach, e.g. to use Conditional Create / Update / Delete with the patient domain identifier. 
  Alternative approaches discussed were:
   1. Requiring the client to use id instead of identifiers for update/delete in a RESTFul transaction. Client could use $pixm operation to get the id based on the domain identifier. 
   2. Use a transaction Bundle for allowing multiple updates
   3. Use a Message as PMIR is doing it with a MessageHeader in the [ITI-93](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf#page=26) transaction

## TODO
- highlight in Volume 1 the capability statement behaviour that the elements for patient matching can be indicated/constrained by the Patient Identifier Cross-reference Manager
- Volume 1 sections needs to be prefixed with 1:
- ITI-104 Security Audit Considerations needs to be defined
- make an open_issues.hml and import open points from iti-83
- make an example for a constrained PIXm Patient profile 