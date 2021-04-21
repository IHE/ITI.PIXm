
## 41.3 PIXm Required Actor Groupings 

Table 41.3-1: PIXm - Required Actor Groupings

|                                             |                          |           |                            |
| ------------------------------------------- | ------------------------ | --------- | -------------------------- |
| PIXm Actor                                  | Actor to be grouped with | Reference | Content Bindings Reference |
| Patient Identifier Cross-reference Consumer | None                     | \--       | \--                        |
| Patient Identifier Cross-reference Manager  | None                     | \--       | \--                        |
{: .grid }


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

