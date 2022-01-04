Instance: questionnaire-cnpem
InstanceOf: Questionnaire
Description: "Questionnaire for adding a drug level of CNPEM to a fhir server"
Title:    "CNPEM Questionnaire addition"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "questionnaire-cnpem"

* name = "questionnaire-cnpem"
* title = "Questionnaire for adding CNPEM"
* status = #active
* item[0].linkId = "code-cnpem"
* item[0].type = #integer
* item[+].linkId = "ingredient-cnpem"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"

* item[+].linkId = "strength-cnpem"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"

* item[+].linkId = "doseform-cnpem"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"

* item[+].linkId = "packsize-cnpem"
* item[=].type = #quantity