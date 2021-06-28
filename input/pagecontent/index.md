
<!-- ## Patient Identifier Cross-reference for Mobile Profile (PIXm) -->

The ***Patient Identifier Cross-reference for* Mobile** ***Integration Profile*** provides RESTful transactions for mobile and lightweight browser-based applications to create, update and delete Patient Ressources in a Patient Identifier Cross-reference Manager and to query the Patient Identifier Cross-reference Manager for a list of patient’s cross-domain
identifiers assigned to the same patient person by the Patient Identifier Cross-reference Manager.

The ***Patient Identifier Cross-reference for* Mobile** ***Integration Profile*** requires the Patient Identifier Cross-reference Manager to implement rules and algorithm to link patient records from different domains to provide the cross-domain identifiers assigned to the same patient person.  

This profile provides lightweight alternative to the transactions defined in the **PIX** and **PIXV3** profiles, using HTTP RESTful transactions.

This profile does not assume the Patient Identifier Cross-reference Manager to have the ability to act as a full-fledged HL7<sup>®</sup> FHIR<sup>®</sup> server, other than for the profiled transaction. PIXm can be used to provide a RESTful interface to a PIX or PIXV3 Patient Identifier Cross-reference Manager without providing other FHIR services.

[Open and Closed Issues](a_issues.html)

### Organization of This Guide
This guide is organized into four main sections:

1. Volume I: [Overview](1_overview.html)
   1. [Actors and Transactions](2_actors_and_transactions.html)
   2. [Security Considerations](3_security_considerations.html)
   3. [Cross Profile Considerations](4_grouping.html)
   4. [Test Plan](5_testplan.html)

2. Volume II: Transaction Detail
   1. [PIXm Feed [ITI-???]](ITI-???.html)
   2. [PIXm Update [ITI-???]](ITI-???.html)
   3. [PIXm Delete [ITI-???]](ITI-???.html)
   4. [Patient Identifier Cross-Reference Query [ITI-83]](ITI-83.html)

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), or [ttl](definitions.ttl.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [Github](https://github.com/IHE/ITI.PIXm).
