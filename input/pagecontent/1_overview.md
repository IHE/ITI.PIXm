
This is an experimental project to show how to publish an IHE Profile using FHIR. The profile prototyped is the Patient Identifier Cross-Reference for Mobile Profile (PIXm). 


## 41.1 PIXm Actors, Transactions, and Content Modules

* Actors

  - [Patient Identifier Cross-Reference Consumer](2_actors_and_transactions.html)

  - [Patient Identifier Cross-Reference Manager](2_actors_and_transactions.html)

* Transactions

  - [Patient Identity cross-Reference Query ITI-83](ITI-83.html)
  













## 41.4 PIXm Overview

The ***Patient Identifier Cross-reference for Mobile Profile*** is
intended to be used by lightweight applications and mobile devices
present in a broad range of healthcare enterprises (hospital, a clinic,
a physician office, etc.). It supports the cross-reference query of
patient identifiers from multiple Patient Identifier Domains via the
following interaction:

  - The ability to access the list(s) of cross-referenced patient
    identifiers via a query/response.

The following use case and descriptions assume familiarity with the
profiles in ITI TF-1:5 and ITI TF-1:23, and only describe the RESTful
actors and transaction alternatives.


![Figure: 41.4-1: Process Flow with PIXm](usecase1-processflow.svg "Figure: 41.4-1: Process Flow with PIXm")

<div style="clear: left"/>

**Figure 41.4-1: Process Flow with PIXm**

**This diagram shows how PIXm actors (in solid outlined, white boxes)
can integrate into a PIX environment (gray boxes; described in ITI TF-1:
5.2). For a discussion of the relationship between this Integration
Profile and an enterprise master patient index (eMPI) see ITI TF-1:
5.4.**

### 41.4.1 Concepts

**The Patient Identifier Cross-reference Consumer fits into the
combination of actors and transactions defined for PIX, see ITI TF-1:5.
It adds the alternative of using the Mobile Patient Identifier
Cross-reference Query \[ITI-83\] instead of the PIX Query \[ITI-9\], or
PIXV3 Query \[ITI-45\] transactions.**

The PIXm Patient Identifier Cross-reference Consumer uses a query for
sets of cross-referenced patient identifiers.

### 41.4.2 Use Cases

#### 41.4.2.1 Use Case: Multiple Identifier Domains within a Single Facility/Enterprise

##### 41.4.2.1.1 Multiple Identifier Domains with a Single Facility/Enterprise Use Case Description

A patient is in an ambulance on his way to the hospital after an
accident. The mobile Care system in the ambulance wants to get allergy
information (e.g., using the MHD Profile) for the patient. The mobile
Care system uses the patient’s driver’s license number ‘E-123’ as their
patient ID. Before requesting the allergy information from the hospital,
it must translate the known patient identity (driver’s license) to the
patient’s identity known by the hospital (MRN). To achieve this
correlation, the mobile Care system issues a Mobile Patient Identifier
Cross-reference Query to the Patient Identifier Cross-reference Manager
and retrieves the corresponding patient identity. It requests a list of
patient ID aliases corresponding to patient ID = ‘E-123’ (within the
“mobile Care domain”) from the Patient Identifier Cross-reference
Manager. Having linked this patient with a patient known by medical
record number = ‘007’ in the ‘ADT Domain’, the Patient Identifier
Cross-reference Manager returns this list to the mobile Care system so
that it may retrieve the allergies information for the desired patient.

The mobile Care system can now request the allergy information from the
hospital allergy system using the allergy system’s own patient ID
(MRN-007) including the domain identifier/assigning authority.

In this scenario, the hospital’s main ADT system (acting as a Patient
Identity Source) would provide a Patient Identity Feed (using the
patient’s MRN as the identifier) to the Patient Identifier
Cross-reference Manager. Similarly, the mobile Care system or the
external assigning authority would also provide a Patient Identity Feed
to the Patient Identifier Cross-reference Manager using the patient
driver’s license as the patient identifier and providing its own unique
identifier domain identifier.

##### 41.4.2.1.2 Multiple Identifier Domains with a Single Facility/Enterprise Process Flow

The PIXm Profile is intended to provide a different transport mechanism
for the cross-identifier Query functionality described in the PIX
Profile. Hence, the Mobile Patient Identifier Cross-reference Query
\[ITI-83\] transaction can be used where the PIX Query \[ITI-9\] (or
equivalent) transaction is used. The following diagram describes only
Patient Cross-Identity for Mobile Process Flow.

![Figure: 41.4.2.1.2-1: Basic Process Flow in Multiple ID Domains in a
Single Facility Process Flow in PIXm Profile](PatientIdentityManagement.png "Figure: 41.4.2.1.2-1: Basic Process Flow in Multiple ID Domains in a
Single Facility Process Flow in PIXm Profile")

<div style="clear: left"/>

**Figure 41.4.2.1.2-1: Basic Process Flow in Multiple ID Domains in a Single Facility Process Flow in PIXm Profile**

