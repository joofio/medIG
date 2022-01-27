
Instance: questionnaire-response-vmp
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response 1"


* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer.valueCoding = beingredient-cs#000002 "insuline lispro"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer.valueQuantity.value = 100
* item[=].item[=].answer.valueQuantity.unit = "U"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"


* item[+].linkId = "doseform-vmp"
* item[=].answer.valueCoding = http://standardterms.edqm.eu/PDF/#50060000 "Solution for injection/infusion"


* item[+].linkId = "route-vmp"
* item[=].answer[+].valueCoding = http://standardterms.edqm.eu/ROA/#20045000 "Intravenous Use"
* item[=].answer[+].valueCoding = http://standardterms.edqm.eu/ROA/#20035000 "Intramuscular Use"
* item[=].answer[+].valueCoding = http://standardterms.edqm.eu/ROA/#20066000 "Intramuscular Use"



Instance: questionnaire-response-vmp2
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example 2 for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire Response 2"

* status = #in-progress
* authored = "2022-01-26T02:00:00Z"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer[+].valueCoding = beingredient-cs#000003 "Tramadol"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer[+].valueQuantity.value = 37.5
* item[=].item[=].answer[+].valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"

* item[+].linkId = "ingredient"

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].answer[+].valueCoding = beingredient-cs#000001 "Acetaminophen"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].answer[+].valueQuantity.value = 325
* item[=].item[=].answer[+].valueQuantity.unit = "mg"


* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].answer.valueCoding = be-rolemed-cs#AP "Active Principle"



* item[+].linkId = "doseform-vmp"
* item[=].answer.valueCoding = http://standardterms.edqm.eu/PDF/#10220000 "Coated Tablet"


* item[+].linkId = "route-vmp"
* item[=].answer[+].valueCoding = http://standardterms.edqm.eu/ROA/#20053000 "Oral Use"

