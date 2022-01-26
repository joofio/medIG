
Instance: questionnaire-response-vmp
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response Addition"

* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item.linkId = "ingredient-vmp"
* item.answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* item.linkId = "strength-vmp"
* item.answer.valueQuantity.value = 20
* item.answer.valueQuantity.unit = "mg"


* item.linkId = "role-vmp"
* item.answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"


* item.linkId = "doseform-vmp"
* item.answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"


* item.linkId = "route-vmp"
* item.answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"
* item.answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"



