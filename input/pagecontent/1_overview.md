
### PIXm Actors, Transactions, and Content Modules

* Actors
  - [Patient Identifier Cross-Reference Source](2_actors_and_transactions.html)
  - [Patient Identifier Cross-Reference Consumer](2_actors_and_transactions.html)
  - [Patient Identifier Cross-Reference Manager](2_actors_and_transactions.html)

* Transactions
  - [Patient Identity Cross-Reference Structure Definition [ITI-???]](ITI-???.html)
  - [Patient Identity Cross-Reference Create [ITI-???]](ITI-???.html)
  - [Patient Identity Cross-Reference Update [ITI-???]](ITI-???.html)
  - [Patient Identity Cross-Reference Delete [ITI-???]](ITI-???.html)
  - [Patient Identity Cross-Reference Query [ITI-83]](ITI-83.html)

### PIXm Overview

The ***Patient Identifier Cross-reference for Mobile Profile (PIXm)*** is intended to be used by lightweight applications and mobile devices present in a broad range of healthcare enterprises (hospital, a clinic,
a physician office, etc.).

It provides RESTful interfaces for Patient Identifier Cross-Reference Source actors to feed, update and delete patient identity data as FHIR patient resources managed by the Patient Identifier Cross-Reference Manager actor, a cross-reference query of patient identifiers from multiple Patient Identifier Domains assigned to the same patient person by the Patient Identifier Cross-Reference Manager and a transaction to retrieve the FHIR structure definition of the patient resource.

#### Concepts

This profile uses RESTful transaction and FHIR patient resources for the Create, Update and Delete transactions perfomed by the Patient Identifier Cross-Reference Source and Manager actors.  

This profile assumes that the Patient Identifier Cross-Reference Manager performs linking and unlinking based on the Create, Update and Delete transcations based on the patient identity data provided by the Patient Identifier Cross-Reference Source actors from the different domains.

This profile does neither specify the rules and algorithm applied by the Patient Identifier Cross-Reference Manager actor to link or unlink the patient identity data from different domains, nor the point in time the Patient Identifier Cross-Reference Manager actually links the data. Patient Identifier Cross-Reference Manager may link the patient identity data from the different domains on time of the Create, Update or Delete transactions, but also may provide other triggers (e.g., manual linking or unlinking in case when the rules and algorithms go wrong).

This profile does not address issues related to building 'golden records' or verified patient identity data. Patient Identifier Cross-Reference Manager may add business functionality to support 'golden records' or verified patient identity data and register them with the Patient Identifier Cross-Reference Manager patient domain/assigning authority.

The actors of this profile may be grouped with corresponding actors of the **PIX** or **PIXV3** profiles and may act as a facade for the **PIX** or **PIXV3** Patient Identifier Cross-Reference Manager to provide RESTful interfaces with FHIR patient resources for patient identity cross referencing.     

#### Use Cases

##### Retrieving documents from other domains

A patient is in an ambulance on his way to the hospital after an
accident. The mobile Care system in the ambulance wants to get allergy
information (e.g., using the MHD Profile) for the patient. The mobile
Care system uses the patient’s driver’s license number ‘E-123’ as their
local patient ID. Before requesting the allergy information from the hospital,
it must translate the known patient identity (driver’s license) to the
patient’s identity known by the hospital (MRN).

To achieve this correlation, the mobile Care system first registers the patient
identity data including the local ID (driver’s license number ‘E-123’) using the
Patient Identifier Cross-reference Create [ITI-???] transaction. The mobile Care system
then issues a Mobile Patient Identifier Cross-reference Query [ITI-83] to the Patient
Identifier Cross-reference Manager to retrieve the list of patient ID aliases from the
Patient Identifier Cross-reference Manager assigned to the same patient person.

Having linked this patient with a patient known by medical record number = ‘007’ in the
‘ADT Domain’, the Patient Identifier Cross-reference Manager returns this list of patient
identifier from different domains which have been assigned to the same patient person
by the Patient Identifier Cross-reference Manager. The mobile Care system can now request
the allergy information from the hospital allergy system using the allergy system’s own patient ID
(MRN-007) including the domain identifier/assigning authority of the ‘ADT Domain’.

In this scenario, the hospital’s main ADT system (acting as a Patient Identity Source) would perform a Patient Identifier Cross-reference Create [ITI-???] transaction (using the patient’s MRN as the identifier) to the Patient Identifier Cross-reference Manager.

##### Providing documents for other domains

After finishing the medical treatment the healthcare professional of the ambulance want's
to provide reports for other domains (e.g., the allergy system). Having registered the patient
identity data including the local patient ID (‘E-123’) the mobile Care systems can provide documents
and register them with the mobile Care system local ID (‘E-123’).

Healthcare systems of other domains may retrieve the documents by using a Patient Identifier
Cross-reference Create [ITI-???] of their local patient identity data and rerieving the list of
patient ID's from the other domains as explained in [section above](#retrieving-documents-from-other-domains).
