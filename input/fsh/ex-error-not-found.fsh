Instance:   pixm-response-error-not-found
InstanceOf: OperationOutcome
Title:      "Example OperationOutcome - sourceIdentifier Patient Identifier not found"
Description: "Example OperationOutcome resulting from a failure find a Patient"
Usage: #example

* issue
  * severity = #error
  * code = #not-found
  * details.text = "sourceIdentifier Patient Identifier not found"
