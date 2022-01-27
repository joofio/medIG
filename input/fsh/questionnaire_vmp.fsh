Instance: questionnaire-vmp
InstanceOf: Questionnaire
Description: "Questionnaire for adding a drug level of VMP to a fhir server"
Title:    "VMP Questionnaire"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-vmp"

* name = "questionnaire-vmp"
* title = "Questionnaire for adding VMP"
* status = #active
* item[+].linkId = "code-vmp"
* item[=].type = #integer
* item[=].required = false
* item[=].text = "Code for the product"

* item[+].linkId = "ingredient"
* item[=].type = #group
* item[=].required = true


* item[=].text = "Ingredient"
* item[=].repeats = true

* item[=].item[+].linkId = "ingredient-vmp"
* item[=].item[=].type = #open-choice
* item[=].item[=].answerValueSet = ingredientVS
* item[=].item[=].required = true
* item[=].item[=].text = "Ingredient for the product"

* item[=].item[+].linkId = "strength-vmp"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].text = "Strength of the ingredient of the product"

* item[=].item[+].linkId = "role-vmp"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = rolevs
* item[=].item[=].required = true
* item[=].item[=].text = "Roles of the ingredient of the product"


* item[+].linkId = "doseform-vmp"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medication-form-codes"
* item[=].required = true
* item[=].text = "Dose Form of the product"

* item[+].linkId = "route-vmp"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/route-codes"
* item[=].text = "Route of administration"
* item[=].repeats = true
