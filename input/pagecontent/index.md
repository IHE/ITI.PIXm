
<!-- ## Patient Identifier Cross-referencing for mobile Profile (PIXm)  -->

The ***Patient Identifier Cross-reference for Mobile (PIXm) Profile*** provides RESTful transactions for mobile and lightweight browser-based applications to create, update and delete patient records in a Patient Identifier Cross-reference Manager and to query the Patient Identifier Cross-reference Manager for a patient’s cross-domain identifiers.

<div markdown="1" class="stu-note">

| [Significant Changes, Open, and Closed Issues](a_issues.html) |
{: .grid}

**[Search this IG](https://www.google.com/search?q=site%3Ahttps%3A%2F%2Fprofiles.ihe.net%2FITI%2FPIXm)**

</div>

### Organization of This Guide
This guide is organized into following sections:

- Volume 1: Use-Case Analysis
  - [41.1 PIXm Actors, Transactions, and Content Modules](volume-1.html#1411-pixm-actors-transactions-and-content-modules)
  - [41.2 PIXm Actor Options](volume-1.html#1412-pixm-actor-options)
  - [41.3 PIXm Required Actor Groupings](volume-1.html#1413-pixm-required-actor-groupings)
  - [41.4 PIXm Overview](volume-1.html#1414-pixm-overview)
  - [41.5 PIXm Security Considerations](volume-1.html#1415-pixm-security-considerations)
  - [41.6 PIXm Cross Profile Considerations](volume-1.html#1416-pixm-cross-profile-considerations)
- Volume 2: Transaction Detail
  - [3.83 Patient Identifier Cross-reference Query [ITI-83]](ITI-83.html)
  - [3.104 Patient Identity Feed FHIR [ITI-104]](ITI-104.html)
- Other
  - [Test Plan](5_testplan.html)
  - [Changes to other Profiles](other.html)
  - [Download and Analysis](download.html)

See also the [table of contents](toc.html) and the index of [artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

PIXm uses `Must Support` in StructureDefinitions with the definition found in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). This is equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).
