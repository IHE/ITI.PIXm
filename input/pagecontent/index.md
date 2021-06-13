
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

[Open and Closed Issues](a_issues.html)

### Organization of This Guide
This guide is organized into four main sections:

1. Volume I: [Overview](1_overview.html)
   1. [Actors and Transactions](2_actors_and_transactions.html)
   2. [Security Considerations](3_security_considerations.html)
   3. [Cross Profile Considerations](4_grouping.html)
   4. [Test Plan](5_testplan.html)

2. Volume II: Transaction Detail
   1. [Patient Identifier Cross-Reference Query [ITI-83]](ITI-83.html)


Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), or [ttl](definitions.ttl.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on
[https://github/JohnMoehrke/ITI.PIXm](https://github.com/JohnMoehrke/ITI.PIXm).

