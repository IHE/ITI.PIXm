
### 41.1 PIXm Actors, Transactions, and Content Modules

#### 41.1.1 Actor Descriptions and Actor Profile Requirements

* Actors
  - [Patient Identifier Cross-Reference Source](volume-1.html#41111-patient-identifier-cross-reference-source)
  - [Patient Identifier Cross-Reference Consumer](volume-1.html#41112-patient-identifier-cross-reference-consumer)
  - [Patient Identifier Cross-Reference Manager](volume-1.html#41113-patient-identifier-cross-reference-manager)

* Transactions
  - [Patient Identity Cross-Reference Query [ITI-83]](ITI-83.html)
  - [Mobile Patient Identity Feed [ITI-104]](ITI-104.html)
  - [Patient Identity cross-Reference Structure Definition [ITI-105]](ITI-105.html)

Figure below shows the actors directly involved in the PIXm Profile and the relevant transactions between them.

![Figure: 41.1-1: PIXm Actor Diagram](ActorsAndTransactions.svg "Figure: 41.1-1: PIXm Actor Diagram")

<div style="clear: left"/>

**Figure: 41.1-1: PIXm Actor Diagram**

Table 41.1-1 lists the transactions for each actor directly involved in the PIXm Profile. To claim compliance with this
profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled
“O”).

Table 41.1-1: PIXm Profile - Actors and Transactions

| Actors| Transactions| Initiator or Responder | Optionality | Reference |
| ----- | ----------- | ---------------------- | ----------- | --------- |
| Patient Identifier Cross-reference Source | Mobile Patient Identity Feed \[ITI-104\] | Initiator | R | [ITI TF-2: 3.104](ITI-104.html) |
| | Mobile Patient Identifier Cross-Reference Structure Definition [ITI-105]| Initiator | O | [ITI TF-2: 3.105](ITI-105.html) |
| Patient Identifier Cross-reference Consumer | Mobile Patient Identifier Cross-Reference Query [ITI-83] | Initiator | R | [ITI TF-2: 3.83](ITI-83.html) |
| | Mobile Patient Identifier Cross-Reference Structure Definition [ITI-105]| Initiator| O | [ITI TF-2: 3.105](ITI-105.html) |
| Patient Identifier Cross-reference Manager  | Mobile Patient Identifier Cross-Reference Query [ITI-83] | Responder | R | [ITI TF-2: 3.83](ITI-83.html) |
| | Mobile Patient Identity Feed [ITI-104] | Responder | R | [ITI TF-2: 3.104](ITI-104.html) |
| | Mobile Patient Identifier Cross-Reference Structure Definition [ITI-105] | Responder | R | [ITI TF-2: 3.105](ITI-105.html) |
{: .grid }

The Mobile Patient Identity Feed [ITI-104] and the Mobile Patient Identifier Cross-Reference Query [ITI-83] transactions
defined in this profile correspond to the transactions used in the PIX and PIXV3 Profiles (ITI TF-1: 5 and 23) and provide
similar functionality.

##### 41.1.1.1 Patient Identifier Cross-reference Source
The Patient Identifier Cross-reference Source is the producer and publisher of patient identity data.

##### 41.1.1.2 Patient Identifier Cross-reference Consumer
The Patient Identifier Cross-reference Consumer queries the patient ID lists from the Patient Identifier Cross-reference
Manager.

##### 41.1.1.3 Patient Identifier Cross-reference Manager
The Patient Identifier Cross-reference Manager manages patient identity data from different domains and links patient
identity data from different domains assigned to the same patient person.  

### 41.2 PIXm Actor Options

Options that may be selected for each actor in this profile, if any, are
listed in the Table 41.2-1. Dependencies between options when applicable
are specified in notes.

Table 41.2-1: PIXm Actors and Options

| Actor                                       | Option Name        | Reference |
| ------------------------------------------- | ------------------ | --------- |
| Patient Identifier Cross-reference Source   | No options defined | \--       |
| Patient Identifier Cross-reference Consumer | No options defined | \--       |
| Patient Identifier Cross-reference Manager  | No options defined | \--       |
{: .grid }

#### 41.2.1 Option Name

TODO

### 41.3 PIXm Required Actor Groupings

Table 41.3-1: PIXm - Required Actor Groupings

| PIXm Actor                                  | Actor to be grouped with | Reference | Content Bindings Reference
| ------------------------------------------- | ------------------------ | --------- | --------------------------
| Patient Identifier Cross-reference Consumer | None                     | \--       | \--                        
| Patient Identifier Cross-reference Manager  | None                     | \--       | \--                        
{: .grid }


### 41.4 PIXm Overview

The ***Patient Identifier Cross-reference for Mobile Profile (PIXm)*** is intended to be used by lightweight applications
and mobile devices present in a broad range of healthcare enterprises (hospital, a clinic,
a physician office, etc.).

It provides RESTful interfaces for Patient Identifier Cross-Reference Source actors to feed, update and delete patient
identity data as FHIR patient resources managed by the Patient Identifier Cross-Reference Manager actor, a cross-reference
query of patient identifiers from multiple Patient Identifier Domains assigned to the same patient person by the Patient
Identifier Cross-Reference Manager and a transaction to retrieve the FHIR structure definition of the patient resource.

#### 41.4.1 Concepts

This profile uses RESTful transaction and FHIR patient resources for the Mobile Patient Identity Feed [ITI-104] and Mobile
Patient Identifier Cross-Reference Query [ITI-83] transactions performed by the Patient Identifier Cross-Reference Source
and Manager actors and a Mobile Patient Identifier Cross-Reference Structure Definition [ITI-105] transaction to share the
structure definition of the FHIR patient resource.   

This profile assumes that the Patient Identifier Cross-Reference Manager performs linking and unlinking based on the
patient identity data provided in the Mobile Patient Identity Feed [ITI-104] transactions from different patient domains.

This profile does neither specify the rules and algorithm applied by the Patient Identifier Cross-Reference Manager actor
to link or unlink the patient identity data from different domains, nor the point in time the Patient Identifier Cross-
Reference Manager actually links the data. Patient Identifier Cross-Reference Manager may link the patient identity data
from the different domains on time of the Mobile Patient Identity Feed [ITI-104] transactions, but also may provide other
triggers (e.g., manual linking or unlinking in case when the rules and algorithms go wrong).

This profile does not address issues related to building 'golden records' or verified patient identity data. Patient
Identifier Cross-Reference Managers may add business functionality to support 'golden records' or verified patient identity
data and register them with the Patient Identifier Cross-Reference Manager patient domain/assigning authority.

The actors of this profile may be grouped with corresponding actors of the **PIX** or **PIXV3** profiles and may act as a
facade for a **PIX** or **PIXV3** Patient Identifier Cross-Reference Manager to provide RESTful interfaces with FHIR
patient resources for patient identity cross referencing.     

#### 41.4.2 Use Cases

##### 41.4.2.1 Retrieving documents from other domains

###### 41.4.2.1.1 Use Case Description

A patient is in an ambulance on his way to the hospital after an accident. The mobile Care system in the ambulance wants to
get allergy information (e.g., using the MHD Profile) for the patient. The mobile Care system uses the patient’s driver’s
license number ‘E-123’ as their local patient ID. Before requesting the allergy information from the hospital,
it must translate the known patient identity (driver’s license) to the patient’s identity known by the hospital (MRN).

To achieve this correlation, the mobile Care system first registers the patient identity data including the local ID
(driver’s license number ‘E-123’) using the Mobile Patient Identity Feed [ITI-104] transaction. The mobile Care system
then issues a Mobile Patient Identifier Cross-reference Query [ITI-83] to the Patient Identifier Cross-reference Manager to
retrieve the list of patient ID aliases from the Patient Identifier Cross-reference Manager assigned to the same patient
person.

Having linked this patient with a patient known by medical record number = ‘007’ in the ‘ADT Domain’, the Patient
Identifier Cross-reference Manager returns this list of patient identifier from different domains which have been assigned
to the same patient person by the Patient Identifier Cross-reference Manager. The mobile Care system can now request the
allergy information from the hospital allergy system using the allergy system’s own patient ID (MRN-007) including the
domain identifier/assigning authority of the ‘ADT Domain’.

In this scenario, the hospital’s main ADT system (acting as a Patient Identity Source) would perform a Mobile Patient
Identity Feed [ITI-104] transaction (using the patient’s MRN as the identifier) to the Patient Identifier Cross-reference
Manager.

###### 41.4.2.1.2 Process Flow
Intentionally left blanc.

##### 41.4.2.2 Providing documents for other domains

###### 41.4.2.2.1 Use Case Description

After finishing the medical treatment the healthcare professional of the ambulance want's to provide reports for other
domains (e.g., the allergy system). Having registered the patient identity data including the local patient ID (‘E-123’)
the mobile Care systems can provide documents and register them with the mobile Care system local ID (‘E-123’).

Healthcare systems of other domains may retrieve the documents by using a Mobile Patient Identity Feed [ITI-104] of their
local patient identity data and retrieving the list of patient ID's from the other domains as explained in section above.

###### 41.4.2.2.2 Process Flow
Intentionally left blanc.

##### 41.4.2.3 Updating Patient identity data

###### 41.4.2.3.1 Use Case Description

The patient administration of the hospital detects that identity data of the patient person have changed (e.g., name change
after marriage, address change). To inform the Patient Identifier Cross-Reference Manager the same patient person the
patient administration systems performs a Mobile Patient Identity Feed [ITI-104] transaction conveying the local ID and the
updated identity data. This enables the Patient Identifier Cross-Reference Manager to match future patient identity records
from other domains which also use the updated identity data of the patient person.    

###### 41.4.2.3.2 Process Flow
Intentionally left blanc.

##### 41.4.2.4 Resolve duplicates

###### 41.4.2.4.1 Use Case Description
The patient administration of the hospital detects that the patient person has been registered twice with slightly
different identity data (e.g., typo in name). To inform the Patient Identifier Cross-Reference Manager that both records
represent the same patient person the patient administration systems performs a Mobile Patient Identity Feed [ITI-
104] transaction conveying the local ID's and identity data of the two records.  

###### 41.4.2.4.2 Process Flow
Intentionally left blanc.

### 41.5 PIXm Security Considerations

See [ITI TF-2: Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-
security-considerations)

### 41.6 PIXm Cross Profile Considerations

The Patient Identifier Cross-reference Manager from PIXm can be grouped with either PIX or PIXV3 Patient Identifier Cross-
reference Consumer an Source to proxy the Mobile Patient Identifier Cross-reference Query [ITI-83] and Mobile Patient Identity Feed [ITI-104] transactions to the more traditional PIX and PIXV3 Query and Feed transactions, thus acting as a proxy to the Patient Identifier Cross-reference Manager that wants to enable RESTful transacions.
