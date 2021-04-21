This section corresponds to transaction [ITI-83] of the IHE Technical Framework. Transaction [ITI-83] is used by the Patient Identifier Cross-reference Consumer and Patient Identifier Cross-reference Manager Actors. This transaction is used to locate and return metadata for previously stored document submissions.

## 3.83 Mobile Patient Identifier Cross-reference Query \[ITI-83\]

This section corresponds to transaction \[ITI-83\] of the IHE IT
Infrastructure Technical Framework.

### 3.83.1 Scope

This transaction is used by the Patient Identifier Cross-reference
Consumer to solicit information about patients whose Patient Identifiers
cross-match with Patient Identifiers provided in the query parameters of
the request message. The request is received by the Patient Identifier
Cross-reference Manager. The Patient Identifier Cross-reference Manager
processes the request and returns a response in the form of zero or more
Patient Identifiers for the matching patient.

### 3.83.2 Actor Roles

The roles in this transaction are defined in the following table and may
be played by the actors shown here:

Table 3.83.2-1: Actor Roles

| **Actor:** | Patient Identifier Cross-reference Consumer                                                                                                                                  |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Role:**  | Requests, from the Patient Identifier Cross-reference Manager, a list of patient identifiers matching the supplied Patient Identifier.                                       |
| **Actor:** | Patient Identifier Cross-reference Manager                                                                                                                                   |
| **Role:**  | Returns Cross-referenced Patient Identifiers for the patient that cross-matches the Patient Identifier criteria provided by the Patient Identifier Cross-reference Consumer. |
{: .grid }


### 3.83.3 Referenced Standards

* HL7 FHIR : HL7<sup>®</sup> FHIR<sup>®</sup> standard <http://hl7.org/fhir/index.html> 

### 3.83.4 Messages


![Figure: 3.83.4-1: Interaction Diagram](transaction-83-seq.svg "Figure: 3.83.4-1: Interaction Diagram")

<div style="clear: left"/>

**Figure 3.83.4-1: Interaction Diagram**

#### 3.83.4.1 Get Corresponding Identifiers message

This message is implemented as an HTTP GET operation from the Patient
Identifier Cross-reference Consumer to the Patient Identifier
Cross-reference Manager using the FHIR $ihe-pix operation described in
Section 3.83.4.1.2 Message Semantics.

##### 3.83.4.1.1 Trigger Events

A Patient Identifier Cross-reference Consumer needs to obtain, or
determine the existence of, alternate patient identifiers.

##### 3.83.4.1.2 Message Semantics

The Get Corresponding Identifiers message is a FHIR operation request as
defined in FHIR (<http://hl7.org/fhir/operations.html>) with the input
parameters shown in Table 3.83.4.1.2-1. Given that the parameters are
not complex types, the HTTP GET operation shall be used as defined in
FHIR (<http://hl7.org/fhir/operations.html#request>).

The name of the operation is `$ihe-pix`, and it is applied to FHIR Patient
Resource type.

The Get Corresponding Identifiers message is conducted by the Patient
Identifier Cross-reference Consumer by executing an HTTP GET against the
Patient Identifier Cross-reference Manager’s Patient Resource URL.

The URL for this operation is: `\[base\]/Patient/$ihe-pix`

Where **\[base\]** is the URL of Patient Identifier Cross-reference
Manager Service provider.

The Get Corresponding Identifiers message is performed by an HTTP GET
command shown below:

    GET
\[base\]/Patient/$ihe-pix?sourceIdentifier=\[token\]{\&targetSystem=\[uri\]}{&\_format=\[token\]}

Table 3.83.4.1.2-1: $ihe-pix Message HTTP query Parameters

| Query parameter Name | Cardinality | Search Type | Description                                                                                                                                                                                                    |
| -------------------- | ----------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| sourceIdentifier     | \[1..1\]    | token       | The Patient identifier search parameter that will be used by the Patient Identifier Cross-reference Manager to find cross matching identifiers associated with the Patient Resource. See Section 3.83.4.1.2.1. |
| targetSystem         | \[0..\*\]   | uri         | The Assigning Authorities for the Patient Identity Domains from which the returned identifiers shall be selected. See Section 3.83.4.1.2.2.                                                                    |
| \_format             | \[0..1\]    | token       | The requested format of the response from the mime-type value set. See ITI TF-2x: Appendix Z.6                                                                                                                 |
{: .grid }


###### 3.83.4.1.2.1 Source Patient Identifier Parameter

The required HTTP query parameter `sourceIdentifier` is a token that
specifies an identifier associated with the patient whose information is
being queried (e.g., a local identifier, account identifier, etc.). Its
value shall include both the Patient Identity Domain (i.e., Assigning
Authority) and the identifier value, separated by a "|".

See ITI TF-2x: Appendix Z.2.2 for use of the `token` search parameter type
for patient identifiers.

The Patient Identifier Cross-reference Consumer shall provide exactly
one (1) instance of this parameter in the query.

For example, a query searching for all patient Identifiers, for a
patient with identifier NA5404 assigned by authority
“1.3.6.1.4.1.21367.2010.1.2.300\&ISO” would be represented as:

> sourceIdentifier=urn:oid:1.3.6.1.4.1.21367.2010.1.2.300|NA5404

###### 3.83.4.1.2.2 Requesting Patient Identity Domains to be Returned

If the Patient Identifier Cross-reference Consumer wishes to select the
Patient Identity Domain(s) from to receive Patient Identifiers, it does
so by populating the `targetSystem` parameter with as many domains for
which it wants to receive Patient Identifiers. The Patient Identifier
Cross-reference Manager shall return the Patient Identifiers for each
requested domain if a value is known.

The targetSystem parameter uses this format:

> targetSystem=\<patient ID Assigning Authority domain\>

Examples:

> targetSystem=urn:oid:1.3.6.1.4.1.21367.2010.1.2.100
> 
> targetSystem=http://fhir.mydomain.com

##### 3.83.4.1.3 Expected Actions

The Patient Identifier Cross-reference Manager shall use the
`sourceIdentifier` and the `targetSystem` to determine the Patient
Identities that match, where Patient Identities include business
Identifier(s) and FHIR Patient Resource(s).

Response returned encoding and semantics is defined in Section 3.83.4.2:

The Patient Identities returned may be a subset based on policies that
might restrict access to some Patient Identities. For guidance on
handling Access Denied, see ITI TF-2x: Appendix Z.7.

#### 3.83.4.2 Response message

##### 3.83.4.2.1 Trigger Events

The Patient Identifier Cross-reference Manager needs to return failure,
or success with zero to many results to the Patient Identifier
Cross-reference Consumer.

##### 3.83.4.2.2 Message Semantics

See ITI TF-2x: Appendix Z.6 for more details on response format
handling.

The response message is a FHIR operation response
(<http://hl7.org/fhir/operations.html#response>)

On Failure, the response message is an HTTP status code of 4xx or 5xx
indicates an error, and an OperationOutcome Resource shall be returned
with details. See specific failure modes in Sections 3.83.4.2.2.2
through 3.83.4.2.2.4.

###### 3.83.4.2.2.1 Success

On Success, the response message is an HTTP status code of 200 with a
single Parameters Resource as shown in Table 3.83.4.2.2-1. For each
matching business Identifier, the Parameters Resource shall include one
parameter element with `name="targetIdentifier"`. For each matching
Patient Resource, the Parameters Resource shall include one parameter
element with name="targetId". The values may be returned in any order.
The identifier value given in the `sourceIdentifier` parameter in the
query shall not be included in the returned Response.

Table 3.83.4.2.2.1-1: $ihe-pix Message Response

| Parameter                | Card.     | Data Type          | Description                                                                                         |
| ------------------------ | --------- | ------------------ | --------------------------------------------------------------------------------------------------- |
| targetIdentifier         | \[0..\*\] | Identifier         | The identifier found. Shall include the assigning authority as specified in ITI TF-2x: Appendix E.3 |
| targetId                 | \[0..\*\] | Reference(Patient) | The URL of the Patient Resource                                                                     |
{: .grid }


###### 3.83.4.2.2.2 Source Identifier not found

When the Patient Identifier Cross-reference Manager recognizes the
Patient Identity Domain in the sourceIdentifier but the identifier is
not found, then the following failure shall be returned:

**HTTP 404** (Not Found) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the patient
identifier is not recognized in an issue having:

| Attribute   | Value                                           |
| ----------- | ----------------------------------------------- |
| severity    | error                                           |
| code        | not-found       |
| diagnostics | “sourceIdentifier Patient Identifier not found” |
{: .grid }


###### 3.83.4.2.2.3 Source Domain not recognized

When the Patient Identifier Cross-reference Manager does not recognize
the Patient Identity Domain in the sourceIdentifier, then the following
failure shall be returned:

**HTTP 400** (Bad Request) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the Patient
Assigning Authority domain is not recognized in an issue having:

| Attribute   | Value                                           |
| ----------- | ------------------------------------------------ |
| severity    | error                                            |
| code        | code-invalid     |
| diagnostics | “sourceIdentifier Assigning Authority not found” |
{: .grid }


###### 3.83.4.2.2.4 Target Domain not recognized

When the Patient Identifier Cross-reference Manager does not recognize
the Patient Identity Domain in the targetSystem, then the following
failure shall be returned:

**HTTP 403** (Forbidden) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the Patient
Identity Domain is not recognized in an issue having:

| Attribute   | Value                                        |
| ----------- | -------------------------------------------- |
| severity    | error                                        |
| code        | code-invalid |
| diagnostics | “targetSystem not found”                     |
{: .grid }


### 3.83.5 Security Considerations

See the general Security Consideration in ITI TF-1: 38.5

#### 3.83.5.1 Security Audit Considerations

The Security audit criteria are similar to those for the PIX Query
\[ITI-9\] as this transaction discloses the same type of patient
information. The Mobile Patient Identifier Cross-reference Query is a
Query Information event as defined in ITI TF-2a: Table 3.20.4.1.1.1-1.
The audit message shall comply with the requirements in ITI TF-2a:
3.9.5.1, with the following differences:

- EventTypeCode = EV(“ITI-83”, “IHE Transactions”, “Mobile Patient
    Identifier Cross-reference Query”)
- Query Parameters (AuditMessage/ParticipantObjectIdentification)
  - ParticipantObjectIdTypeCode = EV(“ITI-83”, “IHE Transactions”,
    “Mobile Patient Identifier Cross-reference Query”)
  - ParticipantObjectQuery = Requested URL including query parameters
  - ParticipantObjectDetail = HTTP Request Headers contained in the
    query (e.g., Accept header)

