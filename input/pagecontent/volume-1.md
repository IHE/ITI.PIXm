<div />

## 1:41.1 PIXm Actors, Transactions, and Content Modules

### 1:41.1.1 Actor Descriptions and Actor Profile Requirements

- Actors
  - [Patient Identity Source](volume-1.html#141111-patient-identity-source)
  - [Patient Identifier Cross-reference Consumer](volume-1.html#141112-patient-identifier-cross-reference-consumer)
  - [Patient Identifier Cross-reference Manager](volume-1.html#141113-patient-identifier-cross-reference-manager)

- Transactions
  - [Patient Identity Cross-reference Query [ITI-83]](ITI-83.html)
  - [Patient Identity Feed FHIR [ITI-104]](ITI-104.html)

Figure below shows the actors directly involved in the PIXm Profile and the relevant transactions between them.

<div>
{%include ActorsAndTransactions.svg%}
</div>
<div style="clear: left" />
**Figure: 41.1-1: PIXm Actor Diagram**

Table 41.1-1 lists the transactions for each actor directly involved in the PIXm Profile.
To claim compliance with this
profile, an actor shall support all required transactions (labeled "R") and
may support the optional transactions (labeled "O").

**Table 41.1-1: PIXm Profile - Actors and Transactions**


<table class="grid">
  <thead>
    <tr>
      <th>Actors</th>
      <th>Transactions</th>
      <th>Initiator or Responder</th>
      <th>Optionality</th>
      <th>Reference</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Patient Identity Source</td>
      <td>Patient Identity Feed FHIR [ITI-104]</td>
      <td>Initiator</td>
      <td>R</td>
      <td><a href="ITI-104.html">ITI TF-2: 3.104</a></td>
    </tr>
    <tr>
      <td>Patient Identifier Cross-reference Consumer</td>
      <td>Mobile Patient Identifier Cross-reference Query [ITI-83]</td>
      <td>Initiator</td>
      <td>R</td>
      <td><a href="ITI-83.html">ITI TF-2: 3.83</a></td>
    </tr>
    <tr>
      <td rowspan='2'>Patient Identifier Cross-reference Manager</td>
      <td>Mobile Patient Identifier Cross-reference Query [ITI-83]</td>
      <td>Responder</td>
      <td>R</td>
      <td><a href="ITI-83.html">ITI TF-2: 3.83</a></td>
    </tr>
    <tr>
      <td>Patient Identity Feed FHIR [ITI-104]</td>
      <td>Responder</td>
      <td>R</td>
      <td><a href="ITI-104.html">ITI TF-2: 3.104</a></td>
    </tr>
  </tbody>
</table>


The Patient Identity Feed FHIR [ITI-104] and the Mobile Patient Identifier Cross-reference Query [ITI-83] transactions defined in this profile correspond to the transactions used in the PIX and PIXV3 Profiles (ITI TF-1: 5 and 23) and provide similar functionality.

#### 1:41.1.1.1 Patient Identity Source
The Patient Identity Source is the producer and publisher of patient identity data.

The following CapabilityStatements define the Actor capabilities
* [Patient Identity Source](CapabilityStatement-IHE.PIXm.Source.html)

For a given Patient Identifier Domain there shall be one and only one Patient Identity Source Actor, but a given Patient Identity Source may serve more than one Patient Identifier Domain.

#### 1:41.1.1.2 Patient Identifier Cross-reference Consumer
The Patient Identifier Cross-reference Consumer queries the patient ID lists from the Patient Identifier Cross-reference
Manager.

The following CapabilityStatements define the Actor capabilities
* [Patient Identifier Cross-reference Consumer](CapabilityStatement-IHE.PIXm.Consumer.html)

#### 1:41.1.1.3 Patient Identifier Cross-reference Manager
The Patient Identifier Cross-reference Manager manages patient identity data from different domains and cross-references patient
identity data from different domains for the same patient.

The following CapabilityStatements define the Actor capabilities
* [Patient Identifier Cross-reference Manager](CapabilityStatement-IHE.PIXm.Manager.html) to the specific requirements of [ITI-83](ITI-83.html) and expected actions and Patient Resource constraints of [ITI-104](ITI-104.html).

## 1:41.2 PIXm Actor Options

Options that may be selected for each actor in this profile, if any, are
listed in the Table 41.2-1. Dependencies between options when applicable
are specified in notes.

Table 41.2-1: PIXm Actors and Options

| Actor                                       | Option Name               | Reference |
| ------------------------------------------- | --------------------------| --------- |
| Patient Identity Source                     | Remove Patient  | \--       |
| Patient Identifier Cross-reference Consumer | No options defined        | \--       |
| Patient Identifier Cross-reference Manager  | Remove Patient  | \--       |
{: .grid }


### 1:41.2.1 Remove Patient

This option enables environments to implement a Patient Identifier Cross-referencing including the removal of patient
identity data in an interoperable manner.

A Patient Identity Source that supports this option shall implement the Patient Identity Feed FHIR [ITI-
104] Remove Patient transaction defined in [ITI TF-2: 3.104.4.3](ITI-104.html#2310443-remove-patient).

A Patient Identifier Cross-reference Manager that supports this option shall implement the Patient Identity Feed FHIR [ITI-
104] Remove Patient transaction defined in [ITI TF-2: 3.104.4.3](ITI-104.html#2310443-remove-patient).

A Patient Identifier Cross-reference Manager that supports this option shall claim the support of the Patient Identity Feed
FHIR [ITI-104] Remove Patient transaction in the actors [Capability Statement](CapabilityStatement-IHE.PIXm.Manager.html).

## 1:41.3 PIXm Required Actor Groupings

Table 41.3-1: PIXm - Required Actor Groupings

| PIXm Actor                                  | Actor to be grouped with | Reference | Content Bindings Reference |
| ------------------------------------------- | ------------------------ | --------- | -------------------------- |
| Patient Identity Source   | None                                       | \--       | \--                        |
| Patient Identifier Cross-reference Consumer | None                     | \--       | \--                        |
| Patient Identifier Cross-reference Manager  | None                     | \--       | \--                        |
{: .grid }

## 1:41.4 PIXm Overview

The ***Patient Identifier Cross-reference for Mobile Profile (PIXm)*** is intended to be used by lightweight applications
and mobile devices present in a broad range of healthcare enterprises (hospital, a clinic,
a physician office, etc.).

It provides RESTful interfaces for Patient Identity Source actors to feed, update and delete patient
identity data as FHIR patient resources managed by the Patient Identifier Cross-reference Manager actor, a cross-reference
query of patient identifiers from multiple Patient Identifier Domains assigned to the same patient person by the Patient
Identifier Cross-reference Manager.

### 1:41.4.1 Concepts

This profile uses RESTful transaction and FHIR patient resources for the Patient Identity Feed FHIR
[ITI-104] and Mobile Patient Identifier Cross-reference Query [ITI-83] transactions performed by the Patient Identifier
Cross-reference Source and Manager actors.

The Patient Identifier Cross-reference Manager will cross-reference the patient identity data from the different domains
when it receives Patient Identity Feed FHIR [ITI-104] transactions, but it may also provide other
triggers (e.g., manual linking or unlinking in case when the rules and algorithms go wrong).

This profile does not specify the rules and algorithm applied by the Patient Identifier Cross-reference Manager actor
to cross-reference the patient identity data from different domains.

The requirements on Patient Identifier Domain as
defined for the [PIX profile](https://profiles.ihe.net/ITI/TF/Volume1/ch-5.html)
apply also for this profile. See [ITI TF-1 Figure 5-1](https://profiles.ihe.net/ITI/TF/Volume1/ch-5.html) and accompanying
text.

This profile does not address issues related to building "golden records" or verified patient identity data. Patient
Identifier Cross-reference Managers may add business functionality to support "golden records" or verified patient identity
data and register them with the Patient Identifier Cross-reference Manager patient domain / assigning authority.

This profile does not define a new transaction for publishing the supported elements, codes and constraints. This profile
requires the Patient Identifier Cross-reference Manager to publish the supported elements, codes and constraints it has
implemented to support its cross-referencing as part of a FHIR CapabilityStatement.


### 1:41.4.2 Use Cases

This section contains informative use-cases, and is not exhaustive.



#### 1:41.4.2.1 Multiple Identifier Domains within a Single Enterprise

This use-case has two Patient Identifier Domains
1. Intensive Care domain
2. Main Hospital domain

<div>
{%include uc_1_domains.svg%}
</div>
<div style="clear: left" />

**Figure 1:41.4.2.1.2-1 : Use-case 1 example Patient Identiy Domains**

##### 1:41.4.2.1.1 Use Case Description

A clinician in the Intensive Care Unit at General Hospital is
reviewing a patient chart on the Intensive Care information
system and wishes to review or monitor the patient's glucose
level, which is included in a laboratory report stored in the
hospital's main laboratory system. The Intensive Care system
needs to map its own patient ID, which it generates
internally, to the patient's medical record number (MRN),
which is generated from the hospital's main patient registration system and is
used as the patient identity by the laboratory system. In this
case the Intensive Care system is essentially in a different
identifier domain than the rest of the hospital since it has
its own notion of patient identity.

In this scenario, the hospital's main patient registration system (acting
as a Patient Identity Source) would provide a Patient Identity
Feed **[01]** (using the patient's MRN as the identifier) to the
Patient Identifier Cross-reference Manager. Similarly, the
Intensive Care system would also provide a Patient Identity Feed **[03]**
to the Patient Identifier Cross-reference Manager using
the internally generated patient ID as the patient identifier
and providing its own unique identifier domain identifier.

When the Patient Identifier Cross-reference Manager receives
the Patient Identity Feed transactions, it performs its
internal logic **[02]** and **[04]** to determine which patient identifiers can
be cross referenced as representing the same patient person based on
the information included in the Feed transactions it has
received. The cross-referencing process (algorithm,
human decisions, etc.) is performed within the
Patient Identifier Cross-reference Manager and is outside
the scope of IHE.

The Intensive Care system wants to get lab information associated with a patient that the Intensive Care system knows as patient ID = MC-123.
Using its own patient ID = MC-123, requests that PIXm Manager return the patient's ID in the Main Hospital domain **[05]**.
Having previously cross-referenced this patient with a patient known by medical record number (e.g., 007) in the Main Hospital Domain **[04]**, the PIXm Manager returns that identifier for the patient.
The Intensive Care system is now able to request laboratory results via [MHD](https://profiles.ihe.net/ITI/TF/Volume1/ch-33.html) **[06]**, using the Patient Identifier in the Main Hospital Domain. The lab system finds lab documents and returns them to the Intensive Care system.

##### 1:41.4.2.1.2 Process Flow

<div>
{%include uc_1.svg%}
</div>
<div style="clear: left" />

**Figure 1:41.4.2.1.2-1 : Multiple ID Domains Process Flow**

*Note: The transactions shown with dotted lines are not part of this profile and included for illustration purposes only.*

#### 1:41.4.2.2 Update patient identity data in Multiple Identifier Domains

This use-case shows the PIXm process when an existing patient has updates to her identifying attributes (identifiers, demographics, contacts, etc).

##### 1:41.4.2.2.1 Use Case Description

The Main Hospital patient registration system initially added a patient’s identity data to the Patient Identity Cross-reference Manager when the patient first entered the hospital for treatment **[01]**.

During a subsequent visit, the registration system detects that the patient’s demographic data should be updated to reflect changes in contact data. The Main Hospital registration system sends na update message to the Patient Identifier Cross-reference Manager using the Mobile Patient Identity Feed [ITI-104] transaction **[07]**.

When the Patient Identifier Cross-reference Manager receives the Patient Identity Feed transaction, it updates the identity information for the patient. Depending on whether its internal logic uses contact data **[08]**, the update may trigger the PIXm Manager to cross-reference in order to determine which patient identifiers of other identifier domains represent the same person person.

##### 1:41.4.2.2.2 Process Flow

<div>
{%include uc_2.svg%}
</div>
<div style="clear: left" />

**Figure 1:41.4.2.2.2-1 : Update patient identity data in Multiple ID Domains Process Flow**

*Note: The transactions shown with dotted lines are not part of this profile and included for illustration purposes only.*

#### 1:41.4.2.3 Resolve duplicate patient identity data in Multiple Identifier Domains

When a Source determines that two patient identities exist for the same person, the Source merges/links the identities (and data), and then notifies the PIXm Manager.

##### 1:41.4.2.3.1 Use Case Description

The Main Hospital patient registration system had initially added patient identity data to the PIXm Manager for both *Charlie* **111** **[01]** and *Charles* **112** **[01]** to the Patient Identity Cross-reference Manager.

After treatment, the registration system detects that *Charles* **112** was previously registered as *Charlie* **111**. For example the *Charles* patient identity created on this episode may have had a typo in name, or different contact data). The registration system marks the *Charles* patient identity data as duplicate, with preference for *Charlie* within the Main Hospital domain.

The registration system sends a Resolve Duplicate message to the Patient Identifier Cross-reference Manager using the Mobile Patient Identity Feed [ITI-104] transaction **[09]**. This transaction tells the PIXm Manager that the *Charles* **112** should be subsumed with preference for *Charlie* **111**.

The PIXm Manager can now do further cross-referencing using internal logic **[10]**.

##### 1:41.4.2.3.2 Process Flow

<div>
{%include uc_3.svg%}
</div>
<div style="clear: left" />

**Figure 1:41.4.2.3.2-1 : Resolve duplicate patient identity data in Multiple ID Domains Process Flow**

*Note: The transactions shown with dotted lines are not part of this profile and included for illustration purposes only.*


## 1:41.5 PIXm Security Considerations

The PIXm profile provides query for identity cross-references, and feed of identity with demographics. Thus the
transactions carry the risk that an inappropriate client or user queries information that should not be disclosed, or
changes information that should not be changed by that client or user.

Actors in PIXm may be grouped with
an [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)
Secure Node or ATNA Secure Application Actor.
This grouping enables the Patient Identifier Cross-reference Manager to
have policies that only highly trusted systems can communicate and that
all changes are recorded in the audit log.

Actors in PIXm may be grouped with
an [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-34.html) Authorization Client or Resource Server as appropriate; with
the [ATNA - STX: HTTPS IUA Option](https://profiles.ihe.net/ITI/IUA/index.html#9-atna-profile).
This grouping will enable more fine grain service side access control and
more detailed audit logging. There are additional requirements and functionality enabled through scope definitions that are transaction specific.
See the Security Considerations sections of the PIXm-defined transactions for guidance on scope definition when grouped with IUA actors.

Actors are expected to follow the recommendations and requirements found in [ITI TF-2:Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations). 

Actors have requirements in the [ITI-83 Security Considerations Section](ITI-83.html#23835-security-considerations) and [ITI-104 Security Considerations Section](ITI-104.html#231045-security-considerations).

## 1:41.6 PIXm Cross Profile Considerations

### 1:41.6.1 Use with PIX and PIXV3 Profile  
The Patient Identifier Cross-reference Manager from PIXm can be grouped with
either PIX or PIXV3 Patient Identifier Cross-reference Consumer and Source to
proxy the Mobile Patient Identifier Cross-reference Query [ITI-83] and
Patient Identity Feed FHIR [ITI-104] transactions to the
more traditional PIX and PIXV3 Query and Feed transactions,
thus acting as a proxy to the Patient Identifier Cross-reference Manager that
wants to enable RESTful transactions. Note that PIX and PIX V3 Source Actors do not have
a corresponding [Remove Patient Option](#14121-remove-patient).

### 1:41.6.2 Use with the Internet User Authorization (IUA) Profile  
The IUA Profile provides support for user authentication, app authentication, and authorization decisions. When PIXm actors are grouped with IUA actors there are additional security and privacy functionality enabled by this grouping. There are additional requirements and functionality enabled through scope definitions that are transaction-specific. See the Security Considerations sections of the PIXm-defined transactions for guidance on scope definition when grouped with IUA actors.
