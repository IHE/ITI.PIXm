
This section defines the actors and transactions in this implementation guide.

Figure below shows the actors directly
involved in the PIXm 
Profile and the relevant transactions between them.


![Figure: 41.1-1: PIXm Actor Diagram](ActorsAndTransactions.svg "Figure: 41.1-1: PIXm Actor Diagram")

<div style="clear: left"/>

**Figure: 41.1-1: PIXm Actor Diagram**


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
{: .grid }

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
{: .grid }

### Actors
The actors in this profile are described in more detail in the sections below.

#### Patient Identifier Cross-reference Consumer

The Document Source is the producer and publisher of documents and metadata.

##### Patient Identifier Cross-reference Manager

The Document Consumer queries for document metadata meeting certain criteria and may retrieve selected documents.



### Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### Patient Identity cross-Reference Query ITI-83

This operation is used to query for Patient Identity cross-References.

For more details see the detailed [transaction description](ITI-83.html)

