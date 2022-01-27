Instance: questionnaire-cnpem
InstanceOf: Questionnaire
Description: "Questionnaire for adding a drug level of CNPEM to a fhir server"
Title:    "CNPEM Questionnaire"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "questionnaire-cnpem"

* name = "questionnaire-cnpem"
* title = "Questionnaire for adding CNPEM"
* status = #active
* item[+].linkId = "code-cnpem"
* item[=].type = #integer
* item[=].required = true
* item[=].text = "Code for the product"

* item[+].linkId = "ingredient-cnpem"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].required = true
* item[=].text = "Ingredient for the product"

* item[+].linkId = "strength-cnpem"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].required = true
* item[=].text = "Strength of the product"

* item[+].linkId = "doseform-cnpem"
* item[=].type = #choice
* item[=].answerValueSet = "http://standardterms.edqm.eu/PAC"
* item[=].required = true
* item[=].text = "Dose Form of the product"

* item[+].linkId = "packsize-cnpem"
* item[=].type = #quantity
* item[=].required = true
* item[=].text = "Package size of the product"