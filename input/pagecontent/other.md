<div markdown="1" class="stu-note">
This section modifies other IHE profiles, and is not a part of the PIXm profile. The content here will be incorporated into the target narrative at a future time, usually when PIXm goes final text.
</div>

## IHE Technical Frameworks General Introduction Appendix A – Actor Summary Definitions

|------------------------------------------------|
| Editor, Add the following new or modified actors to the [IHE Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html): |
{:.grid .bg-info}


| Actor  | Definition  |
| -------------------------------- | ------------ |
| Patient Identity Source | The Patient Identity Source is the producer and publisher of patient identity data. |
| Patient Identifier Cross-reference Consumer | The Patient Identifier Cross-reference Consumer queries the patient ID lists from the Patient Identifier Cross-reference Manager. |
| Patient Identifier Cross-reference Manager  | The Patient Identifier Cross-reference Manager manages patient identity data from different domains and cross-references patient identity data from different domains for the same patient. |
{:.grid .table-striped}


## IHE Technical Frameworks General Introduction Appendix B – Transaction Summary Definitions

|------------------------------------------------|
| Editor, Add the following new or modified transactions to the [IHE Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html): |
{:.grid .bg-info}


| Transaction                              | Definition                                                                                                                                                                                                                                                                                                                           |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Patient Identity Cross-reference Query \[ITI-83\]   |  This transaction is used by the Patient Identifier Cross-reference Consumer to solicit information about patients whose Patient Identifiers cross-match with a Patient Identifier it provides in the request message. The request is received by the Patient Identifier Cross-reference Manager. The Patient Identifier Cross-reference Manager processes the request and returns a response that includes zero or more Patient Identifiers for the matching patient.  |
| Patient Identity Feed FHIR \[ITI-104\] |  This transaction communicates patient information, including corroborating demographic data, after a patient’s identity is established, modified or merged or after the key corroborating demographic data has been modified. In addition the removal of a patient identity in the source patient identifier domain may be communicated. |
{:.grid .table-striped}
