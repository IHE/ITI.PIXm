### Issues
#### Open Issues and Questions

**PIXm\_007**

Mobile Patient Identifier Cross-reference Query response \<assigner\>
resource will be required, for cases where the Assigning authority is
not an OID or UUID or URI

Do we want to use Assigner as an alternative field?

***PIXm\_010***

*Is using FHIR operations the right approach for this profile? If it is
correct, did we document it properly?*

***PIXm\_014***

*Should IHE have just used the $match operator defined in the*
HL7<sup>®</sup> FHIR<sup>®</sup> standard*? It seems to be very similar
function. BUT $match uses Patient resources and not just
identifiers/Reference. That is to say that PIXm operation will expose
identifiers but not other demographics about the patient, whereas $match
exposes the full content of the Patient resource on query and on
returned result. --*
<http://hl7.org/fhir/R4/patient-operation-match.html>

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

#### Closed Issues

**CP-ITI-1118** - asks if the return behavior is well aligned with PDQm.
Seems they both should handle similar conditions similarly. The return
codes were reviewed in PIXm, and found to be appropriate for PIXm as
originally documented.
