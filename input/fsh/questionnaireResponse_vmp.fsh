
Instance: questionnaire-response-vmp
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response Addition"


* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer.valueQuantity.value = 20
* item[=].item[=].answer.valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"


* item[+].linkId = "doseform-vmp"
* item[=].answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"


* item[+].linkId = "route-vmp"
* item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"
* item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"




Instance: questionnaire-response-vmp2
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example 2 for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response Addition"

* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer[+].valueQuantity.value = 20
* item[=].item[=].answer[+].valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"


* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer[+].valueQuantity.value = 20
* item[=].item[=].answer[+].valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"



* item[+].linkId = "doseform-vmp"
* item[=].answer.valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"


* item[+].linkId = "route-vmp"
* item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"
* item[=].answer[+].valueCoding = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"
