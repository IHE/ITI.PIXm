Integrating the Healthcare Enterprise

![](./media/image1.jpeg)

IHE IT Infrastructure

Technical Framework Supplement

Patient Identifier Cross-reference for Mobile

(PIXm)

**HL7<sup>®</sup> FHIR****<sup>®</sup> Release 4**

**Using Resources at Normative Level**

Rev. 2.1 – Trial Implementation

Date: December 5, 2019

Author: IHE ITI Technical Committee

Email: iti@ihe.net

**Please verify you have the most recent version of this document.** See
[here](http://ihe.net/Technical_Frameworks/) for Trial Implementation
and Final Text versions and [here](http://ihe.net/Public_Comment/) for
Public Comment versions.

**Foreword**

This is a supplement to the IHE IT Infrastructure Technical Framework
V16.0. Each supplement undergoes a process of public comment and trial
implementation before being incorporated into the volumes of the
Technical Frameworks.

This supplement is published on December 5, 2019 for trial
implementation and may be available for testing at subsequent IHE
Connectathons. The supplement may be amended based on the results of
testing. Following successful testing it will be incorporated into the
IT Infrastructure Technical Framework. Comments are invited and may be
submitted at
[http://www.ihe.net/ITI\_Public\_Comments](http://www.ihe.net/ITI_Public_Comments/).

This supplement describes changes to the existing technical framework
documents.

“Boxed” instructions like the sample below indicate to the Volume Editor
how to integrate the relevant section(s) into the relevant Technical
Framework volume.

Amend Section X.X by the following:

Where the amendment adds text, make the added text
**<span class="underline">bold underline</span>**. Where the amendment
removes text, make the removed text **~~bold strikethrough~~**. When
entire new sections are added, introduce with editor’s instructions to
“add new text” or similar, which for readability are not bolded or
underlined.

General information about IHE can be found at:
[http://ihe.net](http://ihe.net/).

Information about the IHE IT Infrastructure domain can be found at
[http://ihe.net/IHE\_Domains](http://ihe.net/IHE_Domains/).

Information about the organization of IHE Technical Frameworks and
Supplements and the process used to create them can be found at
[http://ihe.net/IHE\_Process](http://ihe.net/IHE_Process/) and
[http://ihe.net/Profiles](http://ihe.net/Profiles/).

The current version of the IHE IT Infrastructure Technical Framework can
be found at
[http://ihe.net/Technical\_Frameworks](http://ihe.net/Technical_Frameworks/)*.*

**CONTENTS**

[Introduction to this Supplement 5](#introduction-to-this-supplement)

[Open Issues and Questions 6](#open-issues-and-questions)

[Closed Issues 7](#closed-issues)

[General Introduction 8](#general-introduction)

[Appendix A – Actor Summary Definitions
8](#appendix-a-actor-summary-definitions)

[Appendix B – Transaction Summary Definitions
8](#appendix-b-transaction-summary-definitions)

[Glossary 8](#glossary)

[**Volume 1 – Profiles 9**](#_Toc26432163)

[Copyright Licenses 9](#copyright-licenses)

[5.5 Cross Profile Considerations 9](#cross-profile-considerations)

[23.7 Cross Profile Considerations 9](#cross-profile-considerations-1)

[41 Patient Identifier Cross-reference for Mobile Profile (PIXm)
10](#patient-identifier-cross-reference-for-mobile-profile-pixm)

[41.1 PIXm Actors, Transactions, and Content Modules
10](#pixm-actors-transactions-and-content-modules)

[41.1.1 Actor Descriptions and Actor Profile Requirements
11](#actor-descriptions-and-actor-profile-requirements)

[41.2 PIXm Actor Options 11](#pixm-actor-options)

[41.3 PIXm Required Actor Groupings 11](#_Toc26432171)

[41.4 PIXm Overview 12](#pixm-overview)

[41.4.1 Concepts 12](#concepts)

[41.4.2 Use Cases 13](#use-cases)

[41.4.2.1 Use Case: Multiple Identifier Domains within a Single
Facility/Enterprise
13](#use-case-multiple-identifier-domains-within-a-single-facilityenterprise)

[41.4.2.1.1 Multiple Identifier Domains with a Single
Facility/Enterprise Use Case Description
13](#multiple-identifier-domains-with-a-single-facilityenterprise-use-case-description)

[41.4.2.1.2 Multiple Identifier Domains with a Single
Facility/Enterprise Process Flow
13](#multiple-identifier-domains-with-a-single-facilityenterprise-process-flow)

[41.5 Security Considerations 14](#security-considerations)

[41.6 PIXm Cross Profile Considerations
14](#pixm-cross-profile-considerations)

[41.6.1 Proxy Model 14](#proxy-model)

[41.6.2 Manager Grouping 14](#manager-grouping)

[**Volume 2c – Transactions (cont.) 15**](#_Toc396826783)

[3.83 Mobile Patient Identifier Cross-reference Query \[ITI-83\]
15](#mobile-patient-identifier-cross-reference-query-iti-83)

[3.83.1 Scope 15](#scope)

[3.83.2 Actor Roles 15](#actor-roles)

[3.83.3 Referenced Standards 15](#referenced-standards)

[3.83.4 Messages 15](#_Toc26432187)

[3.83.4.1 Get Corresponding Identifiers message
16](#get-corresponding-identifiers-message)

[3.83.4.1.1 Trigger Events 16](#trigger-events)

[3.83.4.1.2 Message Semantics 16](#message-semantics)

[3.83.4.1.2.1 Source Patient Identifier Parameter
17](#source-patient-identifier-parameter)

[3.83.4.1.2.2 Requesting Patient Identity Domains to be Returned
17](#requesting-patient-identity-domains-to-be-returned)

[3.83.4.1.3 Expected Actions 18](#expected-actions)

[3.83.4.2 Response message 18](#response-message)

[3.83.4.2.1 Trigger Events 18](#trigger-events-1)

[3.83.4.2.2 Message Semantics 18](#message-semantics-1)

[3.83.4.2.2.1 Success 18](#success)

[3.83.4.2.2.2 Source Identifier not found
20](#source-identifier-not-found)

[3.83.4.2.2.3 Source Domain not recognized
20](#source-domain-not-recognized)

[3.83.4.2.2.4 Target Domain not recognized
20](#target-domain-not-recognized)

[3.83.5 Security Considerations 21](#security-considerations-1)

[3.83.5.1 Security Audit Considerations
21](#security-audit-considerations)

#   
Introduction to this Supplement

<table>
<tbody>
<tr class="odd">
<td><p>Whenever possible, IHE profiles are based on established and stable underlying standards. However, if an IHE domain determines that an emerging standard has high likelihood of industry adoption, and the standard offers significant benefits for the use cases it is attempting to address, the domain may develop IHE profiles based on such a standard. During Trial Implementation, the IHE domain will update and republish the IHE profile as the underlying standard evolves.</p>
<p>Product implementations and site deployments may need to be updated in order for them to remain interoperable and conformant with an updated IHE profile.</p>
<p>This PIXm Profile is based on Release 4 of the emerging HL7<sup>®</sup>[1] FHIR<sup>®</sup>[2] standard. HL7 describes FHIR Change Management and Versioning at <a href="https://www.hl7.org/fhir/versions.html">https://www.hl7.org/fhir/versions.html</a>.</p>
<p>HL7 provides a rating of the maturity of FHIR content based on the FHIR Maturity Model (FMM): level 0 (draft) through N (Normative). See <a href="http://hl7.org/fhir/versions.html#maturity">http://hl7.org/fhir/versions.html#maturity</a>.</p>
<p>The FMM levels for FHIR content used in this profile are:</p>
<table>
<thead>
<tr class="header">
<th>FHIR Resource Name</th>
<th>FMM Level</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Bundle</td>
<td>Normative</td>
</tr>
<tr class="even">
<td>Patient</td>
<td>Normative</td>
</tr>
<tr class="odd">
<td>Parameters</td>
<td>Normative</td>
</tr>
<tr class="even">
<td>OperationOutcome</td>
<td>Normative</td>
</tr>
</tbody>
</table>
<p>Given that this profile uses all Normative Resources from R4, the reference to the HL7<sup>®</sup> FHIR<sup>®</sup> standard will be to the version independent <a href="http://hl7.org/fhir">http://hl7.org/fhir</a>, rather than the R4 specific <a href="http://hl7.org/fhir/R4">http://hl7.org/fhir/R4</a>.</p></td>
</tr>
</tbody>
</table>

The Patient Identifier Cross-reference for Mobile (PIXm) Profile defines
a lightweight RESTful interface to a Patient Identifier Cross-reference
Manager, leveraging technologies readily available to mobile
applications and lightweight browser-based applications.

The functionality is based on the PIX Profile described in the ITI
TF-1:5. The primary differences are transport and messaging format of
messages and queries. The profile leverages HTTP transport, and the
JavaScript Object Notation (JSON), Simple-XML, and Representational
State Transfer (REST). The payload format is defined by the
HL7<sup>®</sup> FHIR<sup>®</sup> standard. Unlike the PIX Profile, this
PIXm Profile does not describe the transmission of patient identity
information from a Patient Identity Source to the Patient Identifier
Cross-reference Manager.

The PIXm Profile exposes the functionality of a Patient Identifier
Cross-reference Manager to mobile applications and lightweight browser
applications.

This supplement is intended to be fully compliant with the
HL7<sup>®</sup> FHIR<sup>®</sup> standard, providing only use-case
driven constraints to aid with interoperability, deterministic results,
and compatibility with existing PIX and PIXV3 Profiles.

## Open Issues and Questions

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

## Closed Issues

**CP-ITI-1118** - asks if the return behavior is well aligned with PDQm.
Seems they both should handle similar conditions similarly. The return
codes were reviewed in PIXm, and found to be appropriate for PIXm as
originally documented.

# General Introduction

Update the following Appendices to the General Introduction as indicated
below. Note that these are not appendices to Volume 1.

# Appendix A – Actor Summary Definitions

Add the following actors to the IHE Technical Frameworks General
Introduction list of actors:

No new actors

# Appendix B – Transaction Summary Definitions

Add the following transactions to the IHE Technical Frameworks General
Introduction list of Transactions:

| Transaction                                                | Definition                                                    |
| ---------------------------------------------------------- | ------------------------------------------------------------- |
| Mobile Patient Identifier Cross-reference Query \[ITI-83\] | Performs a query for a cross-reference of a Patient Identity. |

# Glossary

Add the following glossary terms to the IHE Technical Frameworks General
Introduction Glossary:

No new Glossary items or updates.

<span id="_Toc26432163" class="anchor"></span>Volume 1 – Profiles

## Copyright Licenses

Add the following to the IHE Technical Frameworks General Introduction
Copyright section:

The FHIR License can be found at
<http://hl7.org/implement/standards/fhir/license.html>.

Add the following new Section 5.5

## 5.5 Cross Profile Considerations

There are two other profiles, Patient Identifier Cross-reference HL7 V3
(PIXV3) and Patient Identifier Cross-reference for Mobile (PIXm), which
provide similar functionality to the Patient Identifier Cross-reference
Query \[ITI-9\] transaction.

A PIX Patient Identifier Cross-reference Manager may choose to group
with the PIXm Patient Identifier Cross-reference Manager to provide an
HTTP RESTful query method.

Add the following new Section 23.7

## 23.7 Cross Profile Considerations

There are two other profiles, (Patient Identifier Cross-reference on HL7
v2 (PIX) and (Patient Identifier Cross-reference for Mobile (PIXm),
which provide similar functionality to the PIXV3 Query \[ITI-45\]
transaction.

A PIXV3 Patient Identifier Cross-reference Manager may choose to group
with the PIXm Patient Identifier Cross-reference Manager to provide an
HTTP RESTful query method.

Add Section 41

# 41 Patient Identifier Cross-reference for Mobile Profile (PIXm)

The ***Patient Identifier Cross-reference for* Mobile** ***Integration
Profile*** provides a transaction for mobile and lightweight
browser-based applications to query a Patient Identifier Cross-reference
Manager for a list of patient identifiers based on the patient
identifier in a different domain and retrieve a patient’s cross-domain
identifiers information into the application.

This profile provides a lightweight alternative to **PIX Query \[ITI-9\]
or PIXV3 Query \[ITI-45\] transactions,** using a HTTP RESTful Query.
This profile depends upon the implementation of the PMIR, PIX, or PIXV3
Profile or equivalent for the patient identity feed and update
notifications. Two example groupings are shown in Section: 41.6.

This profile does not assume Patient Identifier Cross-reference Manager
has the ability to act as a full-fledged HL7<sup>®</sup>
FHIR<sup>®</sup> server, other than for the profiled transaction. PIXm
can be used to provide a RESTful interface to a PIX or PIXV3 Patient
Identifier Cross-reference Manager without providing other FHIR
services.

## 41.1 PIXm Actors, Transactions, and Content Modules

Figure 41.1-1 shows the actors directly involved in the Patient
Identifier Cross-reference for Mobile (PIXm) Profile relevant
transactions between them.

Figure 41.1-1: PIXm Actor Diagram

Table 41.1-1 lists the transactions for each actor directly involved in
the PIXm Profile. To claim compliance with this profile, an actor shall
support all required transactions (labeled “R”) and may support the
optional transactions (labeled “O”).

Table 41.1-1: PIXm Profile - Actors and Transactions

|                                             |                                                            |                        |             |                 |
| ------------------------------------------- | ---------------------------------------------------------- | ---------------------- | ----------- | --------------- |
| Actors                                      | Transactions                                               | Initiator or Responder | Optionality | Reference       |
| Patient Identifier Cross-reference Consumer | Mobile Patient Identifier Cross-Reference Query \[ITI-83\] | Initiator              | R           | ITI TF-2c: 3.83 |
| Patient Identifier Cross-reference Manager  | Mobile Patient Identifier Cross-Reference Query \[ITI-83\] | Responder              | R           | ITI TF-2c: 3.83 |

The transaction defined in this profile corresponds to the query
transactions used in the PIX and PIXV3 Profiles (ITI TF-1: 5 and 23) and
provides similar functionality.

Note that the Patient Master Identity Registry (PMIR) Profile contains
the Mobile Patient Identity Feed \[ITI-93\] transaction which is
equivalent to the Patient Identity Feed (\[ITI-8\] or \[ITI-44\]) or the
PIX Update Notification (\[ITI-10\] and \[ITI-46\]) transactions in the
PIX and PIXV3 Profiles.

### 41.1.1 Actor Descriptions and Actor Profile Requirements

There are no requirements beyond those in Volume 2 for the \[ITI-83\]
transaction.

## 41.2 PIXm Actor Options

Options that may be selected for each actor in this profile, if any, are
listed in the Table 41.2-1. Dependencies between options when applicable
are specified in notes.

Table 41.2-1: PIXm Actors and Options

|                                             |                    |           |
| ------------------------------------------- | ------------------ | --------- |
| Actor                                       | Option Name        | Reference |
| Patient Identifier Cross-reference Consumer | No options defined | \--       |
| Patient Identifier Cross-reference Manager  | No options defined | \--       |

## 41.3 PIXm Required Actor Groupings 

Table 41.3-1: PIXm - Required Actor Groupings

|                                             |                          |           |                            |
| ------------------------------------------- | ------------------------ | --------- | -------------------------- |
| PIXm Actor                                  | Actor to be grouped with | Reference | Content Bindings Reference |
| Patient Identifier Cross-reference Consumer | None                     | \--       | \--                        |
| Patient Identifier Cross-reference Manager  | None                     | \--       | \--                        |

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

Figure 41.4-1: Process Flow with PIXm

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

Figure 41.4.2.1.2-1: Basic Process Flow in Multiple ID Domains in a
Single Facility Process Flow in PIXm Profile

## 41.5 Security Considerations

See ITI TF-2X: Appendix Z.8 “Mobile Security Considerations”

## 41.6 PIXm Cross Profile Considerations

### 41.6.1 Proxy Model

The Patient Identifier Cross-reference Manager from PIXm can be grouped
with either PIX or PIXV3 Patient Identifier Cross-reference Consumer to
proxy the Mobile Patient Identifier Cross-reference Query \[ITI-83\] to
the more traditional PIX Query \[ITI-9\] and PIXV3 Query \[ITI-45\]
transactions, thus acting as a proxy to the Patient Identifier
Cross-reference Manager that wants to enable RESTful query to its data.

### 41.6.2 Manager Grouping

The PIXm Profile does not define a Patient Identity Feed transaction to
the Patient Identifier Cross-reference Manager, but obtaining patient
identifiers is enabled using other IHE profiles, e.g.:

  - The Patient Identifier Cross-reference Manager from PIXm can be
    grouped with a Patient Identity Consumer from the Patient Master
    Identity Registry (PMIR) Profile in order to receive the Mobile
    Patient Identity Feed \[ITI-93\] transaction.

  - The Patient Identifier Cross-reference Manager from PIXm can be
    grouped with either Patient Identifier Cross-reference Manager from
    PIX or PIXV3 to enable the traditional IHE mechanism to obtain
    patient demographics for cross-referencing via Patient Identity Feed
    transactions \[ITI-8\] and/or \[ITI-44\].

Grouping of the PIXm Manager with these other actors is not required if
the implementation is able to obtain patient identity and
cross-reference information in another manner.

<span id="_Toc396826783" class="anchor"></span>Volume 2c – Transactions
(cont.)

Add Section 3.83

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

### 3.83.3 Referenced Standards

|          |                                                                            |
| -------- | -------------------------------------------------------------------------- |
| HL7 FHIR | HL7<sup>®</sup> FHIR<sup>®</sup> standard <http://hl7.org/fhir/index.html> |

### 3.83.4 Messages

Figure 3.83.4-1: Interaction Diagram

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

The name of the operation is $ihe-pix, and it is applied to FHIR Patient
Resource type.

The Get Corresponding Identifiers message is conducted by the Patient
Identifier Cross-reference Consumer by executing an HTTP GET against the
Patient Identifier Cross-reference Manager’s Patient Resource URL.

The URL for this operation is: \[base\]/Patient/$ihe-pix

Where **\[base\]** is the URL of Patient Identifier Cross-reference
Manager Service provider.

The Get Corresponding Identifiers message is performed by an HTTP GET
command shown below:

GET
\[base\]/Patient/$ihe-pix?sourceIdentifier=\[token\]{\&targetSystem=\[uri\]}{&\_format=\[token\]}

Table 3.83.4.1.2-1: $ihe-pix Message HTTP query Parameters

| Query parameter Name | Cardinality | Search Type | Description                                                                                                                                                                                                    |
| -------------------- | ----------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Input Parameters     |             |             |                                                                                                                                                                                                                |
| sourceIdentifier     | \[1..1\]    | token       | The Patient identifier search parameter that will be used by the Patient Identifier Cross-reference Manager to find cross matching identifiers associated with the Patient Resource. See Section 3.83.4.1.2.1. |
| targetSystem         | \[0..\*\]   | uri         | The Assigning Authorities for the Patient Identity Domains from which the returned identifiers shall be selected. See Section 3.83.4.1.2.2.                                                                    |
| \_format             | \[0..1\]    | token       | The requested format of the response from the mime-type value set. See ITI TF-2x: Appendix Z.6                                                                                                                 |

###### 3.83.4.1.2.1 Source Patient Identifier Parameter

The required HTTP query parameter sourceIdentifier is a token that
specifies an identifier associated with the patient whose information is
being queried (e.g., a local identifier, account identifier, etc.). Its
value shall include both the Patient Identity Domain (i.e., Assigning
Authority) and the identifier value, separated by a "|".

See ITI TF-2x: Appendix Z.2.2 for use of the token search parameter type
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
so by populating the targetSystem parameter with as many domains for
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
sourceIdentifier and the targetSystem(s) to determine the Patient
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
parameter element with name="targetIdentifier". For each matching
Patient Resource, the Parameters Resource shall include one parameter
element with name="targetId". The values may be returned in any order.
The identifier value given in the sourceIdentifier parameter in the
query shall not be included in the returned Response.

Table 3.83.4.2.2.1-1: $ihe-pix Message Response

| Parameter                | Card.     | Data Type          | Description                                                                                         |
| ------------------------ | --------- | ------------------ | --------------------------------------------------------------------------------------------------- |
| FHIR Parameters Resource |           |                    |                                                                                                     |
| targetIdentifier         | \[0..\*\] | Identifier         | The identifier found. Shall include the assigning authority as specified in ITI TF-2x: Appendix E.3 |
| targetId                 | \[0..\*\] | Reference(Patient) | The URL of the Patient Resource                                                                     |

\<Parameters xmlns="http://hl7.org/fhir"\>

\<parameter\>

\<name value="targetIdentifier"/\>

\<valueIdentifier\>

\<use value="official" /\>

\<system value="urn:oid:2.16.840.1.113883.16.4.3.2.5" /\>

\<value value="123" /\>

\</valueIdentifier\>

\</parameter\>

\<parameter\>

\<name value="targetIdentifier"/\>

\<valueIdentifier\>

\<use value="official" /\>

\<system value="urn:oid:1.16.7435.2.315381.13.4.1.2.3" /\>

\<value value="474" /\>

\</valueIdentifier\>

\</parameter\>

\<parameter\>

\<name value="targetId"/\>

\<valueReference value="http://xyz-server/xxx/Patient/7536642"\>

\</valueReference\>

\</parameter\>

\<parameter\>

\<name value="targetIdentifier"/\>

\<valueIdentifier\>

\<use value="official"/\>

\<system value="http://www.acmehosp.com/patients"/\>

\<value value="44552"/\>

\<period\>

\<start value="2003-05-03"/\>

\</period\>

\</valueIdentifier\>

\</parameter\>

\<parameter\>

\<name value="targetId"/\>

\<valueReference value="http://pas-server/xxx/Patient/443556"\>

\</valueReference\>

\</parameter\>

\</Parameters\>

###### 3.83.4.2.2.2 Source Identifier not found

When the Patient Identifier Cross-reference Manager recognizes the
Patient Identity Domain in the sourceIdentifier but the identifier is
not found, then the following failure shall be returned:

**HTTP 404** (Not Found) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the patient
identifier is not recognized in an issue having:

|             |                                                 |
| ----------- | ----------------------------------------------- |
| Attribute   | Value                                           |
| severity    | error                                           |
| code        | http://hl7.org/fhir/issue-type\#not-found       |
| diagnostics | “sourceIdentifier Patient Identifier not found” |

###### 3.83.4.2.2.3 Source Domain not recognized

When the Patient Identifier Cross-reference Manager does not recognize
the Patient Identity Domain in the sourceIdentifier, then the following
failure shall be returned:

**HTTP 400** (Bad Request) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the Patient
Assigning Authority domain is not recognized in an issue having:

|             |                                                  |
| ----------- | ------------------------------------------------ |
| Attribute   | Value                                            |
| severity    | error                                            |
| code        | http://hl7.org/fhir/issue-type\#code-invalid     |
| diagnostics | “sourceIdentifier Assigning Authority not found” |

###### 3.83.4.2.2.4 Target Domain not recognized

When the Patient Identifier Cross-reference Manager does not recognize
the Patient Identity Domain in the targetSystem, then the following
failure shall be returned:

**HTTP 403** (Forbidden) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the Patient
Identity Domain is not recognized in an issue having:

|             |                                              |
| ----------- | -------------------------------------------- |
| Attribute   | Value                                        |
| severity    | error                                        |
| code        | http://hl7.org/fhir/issue-type\#code-invalid |
| diagnostics | “targetSystem not found”                     |

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

<!-- end list -->

  - ParticipantObjectIdTypeCode = EV(“ITI-83”, “IHE Transactions”,
    “Mobile Patient Identifier Cross-reference Query”)

  - ParticipantObjectQuery = Requested URL including query parameters

  - ParticipantObjectDetail = HTTP Request Headers contained in the
    query (e.g., Accept header)

<!-- end list -->

1.  HL7 is the registered trademark of Health Level Seven International.

2.  FHIR is the registered trademark of Health Level Seven
    International.
