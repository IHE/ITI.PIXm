<div markdown="1" class="stu-note">

### Significant changes from [PIXm, December 5, 2019](https://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PIXm.pdf):
- FHIR Implementation Guide instead of [pdf](https://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PIXm.pdf), [work item](https://github.com/IHE/IT-Infrastructure/issues/149)
- Volume 1 Update Use Cases and introduced new Mobile Patient Identifier Cross-reference Feed according to [work item](https://github.com/IHE/IT-Infrastructure/issues/147)
- Volume 2 ITI-83  
  - Added Parameter StructureDefinitions for $pixm operation
  - Added Security Audit Considerations with AuditEvent profile / resource
  - Added IHE Connectathon Samples for ITI-83
- Volume 2 ITI-104
   - New Mobile Patient Identifier Cross-reference Feed [ITI-104] Transaction
   - Profile for specifying Patient elements used by Patient Identifier Cross-reference Manager to correlate identifiers
   - Added the Delete Patient operation, optional to allow grouping or acting as facade with PIX V2, V3
   - Added IHE Connectathon samples ITI-104
   - Added Security Audit Considerations with AuditEvent profile / resource

### Discussion Points F2F July 2021
- Added for the 104 transaction the examples directly in the text with the relevant part, (use ... for the non-relevant part)
- Tried to clarify for a given Patient Identifier Domain there SHALL be one and only one Patient Identity Source Actor, but a given Patient Identity Source may serve more than one Patient Identifier Domain. 
  [Added Reference to PIX Patient Identifier Domain and added it for the other transactions](https://github.com/IHE/ITI.PIXm/commit/52a13195c45710d660158a38742b2cebae8b6f99)
- When grouped with ATNA expectation that the Patient Identifier Cross-reference Manager checks that the Patient Idendity Source is using the right identifier domain added to Security Configurations in 104.


- ITI-104: If the Patient Identifier Cross-reference Manager creates a "shadow copy" should this id be returned in pixm queries -> Propose yes and close this a discussion point and not list it since it is documented and illustrated with the query response 
- ITI-105: Should a Patient Identifier Cross-reference Manage populate meta.source if it creates a "shadow copy"? -> Propose no: Leave it up to the implementer

#### List of questions to ask for the public review
- For the [ITI-104] Mobile Patient Identifier Cross-reference Feed it is proposed to use a RESTFul approach, e.g. to use Conditional Create / Update / Delete with the patient domain identifier. Please provide feedback during Public Comment if this approach is fine or indicate an alternative:
  Alternative approaches discussed were:
   1. Requiring the client to use id instead of identifiers for update/delete in a RESTFul transaction. Client could use $pixm operation to get the id based on the domain identifier. 
   2. Use a transaction Bundle for allowing multiple updates
   3. Use a Message as PMIR is doing it with a MessageHeader in the [ITI-93](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf#page=26) transaction

#### Open Issues and Questions

***PIXm\_007***

*Mobile Patient Identifier Cross-reference Query response &lt;assigner&gt; resource will be required, for cases where the Assigning authority is not an OID or UUID or URI*

*Do we want to use Assigner as an alternative field?*

***PIXm\_010***

*Is using FHIR operations the right approach for this profile? If it is
correct, did we document it properly?*

***PIXm\_014***

*Should IHE have just used the [$match operation](http://hl7.org/fhir/R4/patient-operation-match.html) defined in the HL7<sup>®</sup> FHIR<sup>®</sup> standard*? It seems to be very similar
function. BUT $match uses Patient resources and not just
identifiers/Reference. That is to say that PIXm operation will expose
identifiers but not other demographics about the patient, whereas $match
exposes the full content of the Patient resource on query and on
returned result. 

*Thus should $match be an alternative, or another transaction, or
ignored by IHE?*

***PIXm\_015***

*Should we simplify the Parameters given that a Reference datatype can
now carry a Reference.identifier or a Reference.reference?*

***PIXm 016***

*Should we enhance the Parameters returned so that each business
identifier (Identifier) referenced by each Patient can be enumerated.
This will result in each business identifier being listed multiple
times, both at the root and also once for each Patient resource
containing the value in the .identifier element. This seems useful to
the client, but also seems to be beyond the intended use-case for PIX,
and could more appropriately be handled with PDQm, or a secondary query
of the Patient. Concern is that PIXm security model covers identifiers
(reference to Patient is an identifier in FHIR), but by expanding as
proposed this would be returning part of the Patient resource content.*


***PIXm 017***
ITI-83 references E.3 which is in [pdf](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=16), see also [github issue](https://github.com/IHE/publications/issues/110).


***PIXm 018***
PIXm does not yet define a FHIR equivalent for the transactions  PIX Update Notification [ITI-10] and PIXV3 Update Notification [ITI-46], 
we anticipate that it will be added in a future revision.

#### Closed Issues

**CP-ITI-1118** - asks if the return behavior is well aligned with PDQm.
Seems they both should handle similar conditions similarly. The return
codes were reviewed in PIXm, and found to be appropriate for PIXm as
originally documented.


</div>
