## 3.X-PIXmFeed Mobile Patient Identity Feed [ITI-X-PIXmFeed]

This section corresponds to transaction [ITI-X-PIXmFeed] of the IHE Technical Framework. Transaction [ITI-X-PIXmFeed] is used by the Patient Identity Source and Patient Identifier Cross-reference Manager and Document Registry Actors. 

### 3.X-PIXmFeed.1 Scope

The scope is identical to [ITI TF-2: 3.8.1](https://profiles.ihe.net/ITI/TF/Volume2/ITI-8.html#3.8.1) .

### 3.X-PIXmFeed.2 Actor Roles

The roles in this transaction are defined in the following table and may
be played by the actors shown here:

Table 3.X-PIXmFeed.2-1: Actor Roles

| Actor | Role |
|-------------------+--------------------------|
| Patient Identity Source   | Provides notification to the Patient Identifier Cross-reference Manager and Document Registry for any patient identification related events including: creation, updates, merges, etc. |
| Patient Identifier Cross-reference Manager  | Serves a well-defined set of Patient Identification Domains. Based on information provided in each Patient Identification Domain by a Patient Identification Source Actor, it manages the cross-referencing of patient identifiers across Patient Identification Domains. |
{: .grid}

### 3.X-PIXmFeed.3 Referenced Standards

* HL7 FHIR : HL7<sup>®</sup> FHIR<sup>®</sup> standard <http://hl7.org/fhir/index.html> 

### 3.X-PIXmFeed.4 Messages

<div>
{%include ITI-X-PIXmFeed-seq.svg%}
</div>

**Figure 3.X-PIXmFeed.4-1: Interaction Diagram**

#### 3.X-PIXmFeed.4.1 Add Patient

This message is implemented as an HTTP POST operation from the Patient Identity Source to the Patient Identifier
Cross-reference Manager described in Section 3.X-PIXmFeed.4.1.2 Message Semantics.

##### 3.X-PIXmFeed.4.1.1 Trigger Events

The Add Patient trigger event signals that a new patient was added to a Patient Identity Source.

The Patient Identifier Cross-reference Manager shall only perform cross-referencing logic on messages received from Patient Identity Source Actors. For a given Patient Identifier Domain there shall be one and only one Patient Identity Source Actor, but a given Patient Identity Source may serve more than one Patient Identifier Domain.

##### 3.X-PIXmFeed.4.1.2 Message Semantics

A Patient Identity Source initiates a FHIR create request using HTTP POST as defined at [http://hl7.org/fhir/http.html#create](http://hl7.org/fhir/http.html#create) on a Patient Resource.

A Patient Identity Source shall be able to send a request for either the JSON or the XML format as defined in FHIR. A Patient Identifier Cross-reference Manage shall be able to support the JSON and the XML format.

##### 3.X-PIXmFeed.4.1.2.1 Patient Resource constraints

At least one identifier of the Patient Identification Domain of the Patient Identity Source shall be provided. 

##### 3.X-PIXmFeed.4.1.3 Expected Actions

Same as [3.8.4.1.3 Expected Actions – Patient Identifier Cross-reference Manager](https://profiles.ihe.net/ITI/TF/Volume2/ITI-8.html#3.8.1) ?

##### 3.X-PIXmFeed.4.1.4 Response message

See [http://hl7.org/fhir/http.html#create](http://hl7.org/fhir/http.html#create) for response.


##### 3.X-PIXmFeed.4.1.4 Example

<pre>
POST http://example.org/fhir/Patient HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json
</pre>
For content body see [Patient Mohr Alice Red](Patient-Patient-MohrAlice-Red.json.html) example in identifier domain urn:oid:1.3.6.1.4.1.21367.13.20.1000.



#### 3.X-PIXmFeed.4.2 Revise Patient

This message is implemented as an HTTP conditional update operation from the Patient Identity Source to the Patient Identifier
Cross-reference Manager described in Section 3.X-PIXmFeed.4.2.2 Message Semantics.

##### 3.X-PIXmFeed.4.2.1 Trigger Events

The Revise Patient trigger event signals that patient information was revised in a Patient Identity Source (e.g., change in patient name, patient address, etc.).

##### 3.X-PIXmFeed.4.2.2 Message Semantics

A Patient Identity Source initiates a FHIR create request using HTTP PUT as defined at [http://hl7.org/fhir/http.html#cond-update](http://hl7.org/fhir/http.html#cond-update) on a Patient Resource.

A Patient Identity Source shall be able to send a request for either the JSON or the XML format as defined in FHIR. A Patient Identifier Cross-reference Manage shall be able to support the JSON and the XML format and support the coditional PUT operation.

##### 3.X-PIXmFeed.4.2.2.1 Patient Resource constraints

-

##### 3.X-PIXmFeed.4.2.3 Expected Actions

Same as [3.8.4.1.3 Expected Actions – Patient Identifier Cross-reference Manager](https://profiles.ihe.net/ITI/TF/Volume2/ITI-8.html#3.8.1) ?

##### 3.X-PIXmFeed.4.2.4 Response message

See  [http://hl7.org/fhir/http.html#cond-update](http://hl7.org/fhir/http.html#cond-update) for response.

##### 3.X-PIXmFeed.4.2.4 Example

<pre>
PUT http://example.org/fhir/Patient?identifier=urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994 HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json
</pre>
For content body see [Patient Mohr Alice Red](Patient-Patient-MohrAlice-Red.json.html) example in identifier domain urn:oid:1.3.6.1.4.1.21367.13.20.1000.




#### 3.X-PIXmFeed.4.3 Resolve Patient duplicate

This message is implemented as an HTTP conditional update operation from the Patient Identity Source to the Patient Identifier
Cross-reference Manager described in Section 3.X-PIXmFeed.4.2.2 Message Semantics.

##### 3.X-PIXmFeed.4.3.1 Trigger Events

The Revise Patient trigger event signals that patient information was revised in a Patient Identity Source (e.g., change in patient name, patient address, etc.).

##### 3.X-PIXmFeed.4.3.2 Message Semantics

A Patient Identity Source initiates a FHIR create request using HTTP PUT as defined at [http://hl7.org/fhir/http.html#cond-update](http://hl7.org/fhir/http.html#cond-update) on a Patient Resource.

A Patient Identity Source shall be able to send a request for either the JSON or the XML format as defined in FHIR. A Patient Identifier Cross-reference Manage shall be able to support the JSON and the XML format and support the coditional PUT operation.

##### 3.X-PIXmFeed.4.3.2.1 Patient Resource constraints

A link of type 'replaces' shall be added with the identifier pointing to the old record.

##### 3.X-PIXmFeed.4.3.3 Expected Actions

Same as [3.8.4.1.3 Expected Actions – Patient Identifier Cross-reference Manager](https://profiles.ihe.net/ITI/TF/Volume2/ITI-8.html#3.8.1) ?

##### 3.X-PIXmFeed.4.3.4 Response message

See  [http://hl7.org/fhir/http.html#cond-update](http://hl7.org/fhir/http.html#cond-update) for response.

##### 3.X-PIXmFeed.4.3.4 Example

<pre>
PUT http://example.org/fhir/Patient?identifier=urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994 HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json
</pre>
TODO