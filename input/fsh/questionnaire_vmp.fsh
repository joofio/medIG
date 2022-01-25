Instance: questionnaire-vmp
InstanceOf: Questionnaire
Description: "Questionnaire for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire addition"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-cnpem"

* name = "questionnaire-vmp"
* title = "Questionnaire for adding VMP"
* status = #active
* item[+].linkId = "code-vmp"
* item[=].type = #integer
* item[=].required = true
* item[=].text = "Code for the product"

* item[+].linkId = "ingredient"
* item[=].type = #display
* item[=].required = true


* item[=].text = "Ingredient for the product"
* item[=].repeats = true

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[=].required = true
* item[=].item[=].text = "Ingredient for the product"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[=].required = true
* item[=].item[=].text = "Strength of the ingredient of the product"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[=].required = true
* item[=].item[=].text = "ROles of the ingredient of the product"


* item[+].linkId = "doseform-vmp"
* item[=].type = #choice
* item[=].answerValueSet = "http://standardterms.edqm.eu/PAC"
* item[=].required = true
* item[=].text = "Dose Form of the product"

* item[+].linkId = "route-vmp"
* item[=].type = #choice
* item[=].required = true
* item[=].text = "Package size of the product"