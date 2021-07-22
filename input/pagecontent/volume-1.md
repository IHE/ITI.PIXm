
### 1:41.1 PIXm Actors, Transactions, and Content Modules

#### 1:41.1.1 Actor Descriptions and Actor Profile Requirements

* Actors
  - [Patient Identifier Cross-reference Source](volume-1.html#141111-patient-identifier-cross-reference-source)
  - [Patient Identifier Cross-reference Consumer](volume-1.html#141112-patient-identifier-cross-reference-consumer)
  - [Patient Identifier Cross-reference Manager](volume-1.html#141113-patient-identifier-cross-reference-manager)

* Transactions
  - [Patient Identity Cross-reference Query [ITI-83]](ITI-83.html)
  - [Mobile Patient Identifier Cross-reference Feed [ITI-104]](ITI-104.html)

Figure below shows the actors directly involved in the PIXm Profile and the relevant transactions between them.

![Figure: 1:41.1-1: PIXm Actor Diagram](ActorsAndTransactions.svg)

<div style="clear: left"/>

**Figure: 1:41.1-1: PIXm Actor Diagram**

Table 1:41.1-1 lists the transactions for each actor directly involved in the PIXm Profile. To claim compliance with this
profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled
“O”).

Table 1:41.1-1: PIXm Profile - Actors and Transactions

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
      <td>Patient Identifier Cross-reference Source</td>
      <td>Mobile Patient Identifier Cross-reference Feed [ITI-104]</td>
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
      <td>Mobile Patient Identifier Cross-reference Feed [ITI-104]</td>
      <td>Responder</td>
      <td>R</td>
      <td><a href="ITI-104.html">ITI TF-2: 3.104</a></td>
    </tr>
  </tbody>
</table>

The Mobile Patient Identifier Cross-reference Feed [ITI-104] and the Mobile Patient Identifier Cross-reference Query [ITI-83] transactions defined in this profile correspond to the transactions used in the PIX and PIXV3 Profiles (ITI TF-1: 5 and 23) and provide similar functionality.

##### 1:41.1.1.1 Patient Identifier Cross-reference Source
The Patient Identifier Cross-reference Source is the producer and publisher of patient identity data.

The following CapabilityStatements define the Actor capabilities
* [Patient Identifier Cross-reference Source](CapabilityStatement-Source.html) 

##### 1:41.1.1.2 Patient Identifier Cross-reference Consumer
The Patient Identifier Cross-reference Consumer queries the patient ID lists from the Patient Identifier Cross-reference
Manager.

The following CapabilityStatements define the Actor capabilities
* [Patient Identifier Cross-reference Consumer](CapabilityStatement-IHE_PIXm_Consumer.html) 

##### 1:41.1.1.3 Patient Identifier Cross-reference Manager
The Patient Identifier Cross-reference Manager manages patient identity data from different domains and links patient
identity data from different domains assigned to the same patient person.  

The following CapabilityStatements define the Actor capabilities
* [Patient Identifier Cross-reference Manager](CapabilityStatement-IHE_PIXm_Manager.html) 

### 1:41.2 PIXm Actor Options

Options that may be selected for each actor in this profile, if any, are
listed in the Table 1:41.2-1. Dependencies between options when applicable
are specified in notes.

Table 1.41.2-1: PIXm Actors and Options

| Actor                                       | Option Name        | Reference |
| ------------------------------------------- | ------------------ | --------- |
| Patient Identifier Cross-reference Source   | No options defined | \--       |
| Patient Identifier Cross-reference Consumer | No options defined | \--       |
| Patient Identifier Cross-reference Manager  | No options defined | \--       |
{: .grid }

### 1:41.3 PIXm Required Actor Groupings

Table 1:41.3-1: PIXm - Required Actor Groupings

| PIXm Actor                                  | Actor to be grouped with | Reference | Content Bindings Reference
| ------------------------------------------- | ------------------------ | --------- | --------------------------
| Patient Identifier Cross-reference Consumer | None                     | \--       | \--                        
| Patient Identifier Cross-reference Manager  | None                     | \--       | \--                        
{: .grid }

### 1:41.4 PIXm Overview

The ***Patient Identifier Cross-reference for Mobile Profile (PIXm)*** is intended to be used by lightweight applications
and mobile devices present in a broad range of healthcare enterprises (hospital, a clinic,
a physician office, etc.).

It provides RESTful interfaces for Patient Identifier Cross-reference Source actors to feed, update and delete patient
identity data as FHIR patient resources managed by the Patient Identifier Cross-reference Manager actor, a cross-reference
query of patient identifiers from multiple Patient Identifier Domains assigned to the same patient person by the Patient
Identifier Cross-reference Manager.

#### 1:41.4.1 Concepts

This profile uses RESTful transaction and FHIR patient resources for the Mobile Patient Identifier Cross-reference Feed [ITI-104] and Mobile Patient Identifier Cross-reference Query [ITI-83] transactions performed by the Patient Identifier Cross-reference Source and Manager actors.

Patient Identifier Cross-reference Manager may publish the supported attributes, codes and constraints to inform Sources on what is expected and Consumer on what to expect. This profile does not define a new transaction for publishing the supported attributes, codes and constraints. It relies on the FHIR standard instead and recommends to publish the supported attributes, codes and constraints as part of the FHIR capability statement.      

This profile assumes that the Patient Identifier Cross-reference Manager performs linking and unlinking based on the patient identity data provided in the Mobile Patient Identifier Cross-reference Feed [ITI-104] transactions from different patient domains.

The requirements on Patient Identifier Domain and a Patient Identifier Cross-reference Domain as defined for the [PIX profile](https://profiles.ihe.net/ITI/TF/Volume1/ch-5.html) apply also for this profile.

This profile does neither specify the rules and algorithm applied by the Patient Identifier Cross-reference Manager actor to link or unlink the patient identity data from different domains, nor the point in time the Patient Identifier Cross-reference Manager actually links the data. Patient Identifier Cross-reference Manager may link the patient identity data from the different domains on time of the Mobile Patient Identifier Cross-reference Feed [ITI-104] transactions, but also may provide other triggers (e.g., manual linking or unlinking in case when the rules and algorithms go wrong).

This profile does not address issues related to building 'golden records' or verified patient identity data. Patient
Identifier Cross-reference Managers may add business functionality to support 'golden records' or verified patient identity
data and register them with the Patient Identifier Cross-reference Manager patient domain/assigning authority.

The actors of this profile may be grouped with corresponding actors of the **PIX** or **PIXV3** profiles and may act as a
facade for a **PIX** or **PIXV3** Patient Identifier Cross-reference Manager to provide RESTful interfaces with FHIR
patient resources for patient identity cross referencing.     

#### 1:41.4.2 Use Cases

##### 1:41.4.2.1 Multiple Identifier Domains within a Single Facility/ Enterprise

###### 1:41.4.2.1.1 Use Case Description

A clinician in the Intensive Care Unit at General Hospital is reviewing a patient chart on the Intensive Care information
system and wishes to review or monitor the patient’s glucose level, which is included in a laboratory report stored in the
hospital’s main laboratory system. The Intensive Care system needs to map its own patient ID, which it generates
internally, to the patient’s medical record number (MRN), which is generated from the hospital’s main ADT system and is
used as the patient identity by the lab system. In this case the Intensive Care system is essentially in a different
identifier domain than the rest of the hospital since it has its own notion of patient identity.

In this scenario, the hospital’s main ADT system (acting as a Patient Identity Source) would provide a Patient Identity
Feed (using the patient’s MRN as the identifier) to the Patient Identifier Cross-reference Manager. Similarly, the
Intensive Care system would also provide a Patient Identity Feed to the Patient Identifier Cross-reference Manager using
the internally generated patient ID as the patient identifier and providing its own unique identifier domain identifier.

Once the Patient Identifier Cross-reference Manager receives the Patient Identity Feed transactions, it performs its
internal logic to determine which, if any, patient identifiers can be “linked together” as being the same patient based on
the corroborating information included in the Feed transactions it has received. The cross-referencing process (algorithm,
human decisions, etc.) is performed within the Patient Identifier Cross-reference Manager and is outside the scope of IHE.

The Intensive Care system wants to get lab information associated with a patient that the Intensive Care system knows as
patient ID = ‘MC-123’. It requests the lab report from the lab system using its own patient ID (MC-123) including the
domain identifier/ assigning authority. Upon receipt of the request, the lab system determines that the request is for a
patient outside of its own identifier domain ( ADT Domain ). It requests a list of patient ID aliases corresponding to
patient ID = ‘MC-123’ (within the “ Intensive Care domain ”) from the Patient Identifier Cross-reference Manager. Having
linked this patient with a patient known by medical record number = ‘007’ in the ‘ ADT Domain ’, the Patient Identifier
Cross-reference Manager returns this list to the lab system so that it may retrieve the lab report for the desired patient
and return it to the Intensive Care system. Figure 1:41.4.2.1.2-1 illustrates this process flow.


###### 1:41.4.2.1.2 Process Flow

![Figure: 1:41.4.2.1.2-1 : Multiple ID Domains in a Single Facility Process Flow](uc_1.svg)

<div style="clear: left"/>

**Figure 1:41.4.2.1.2-1 : Multiple ID Domains in a Single Facility Process Flow**

*Note: Request and Response portions of the MHD transaction are not part of this profile and included for illustration
purposes only.*

### 1:41.5 PIXm Security Considerations

See [ITI TF-2: Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-
security-considerations)

The PIXm profile provides query for identity cross-references, and feed of identity with demographics. Thus the
transactions carry the risk that an inappropriate client or user queries information that should not be disclosed, or
changes information that should not be changed by that client or user.

Actors in PIXm may be grouped with an [Audit Trail and Node Authentication (ATNA) Profile](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) - Secure Node or ATNA Secure Application Actor.
This grouping enables the Patient Identifier Cross-reference Manager to have policies that only highly trusted systems can communicate and that all changes are recorded in the audit log.

Actors in PIXm may be grouped with an [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-34.html) Authorization Client or Resource Server as appropriate; with the [ATNA - STX: HTTPS IUA Option](https://profiles.ihe.net/ITI/IUA/index.html#9-atna-profile).
This grouping will enable more fine grain service side access control and more detailed audit logging.

### 1:41.6 PIXm Cross Profile Considerations

The Patient Identifier Cross-reference Manager from PIXm can be grouped with either PIX or PIXV3 Patient Identifier Cross-
reference Consumer and Source to proxy the Mobile Patient Identifier Cross-reference Query [ITI-83] and Mobile Patient
Identifier Cross-reference Feed [ITI-104] transactions to the more traditional PIX and PIXV3 Query and Feed transactions,
thus acting as a proxy to the Patient Identifier Cross-reference Manager that wants to enable RESTful transactions.
