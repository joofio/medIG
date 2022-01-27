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


Instance: questionnaire-amp
InstanceOf: Questionnaire
Description: "Questionnaire for adding a drug level of AMP to a fhir server"
Title:    "AMP Questionnaire"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-amp"

* name = "questionnaire-vmp"
* title = "Questionnaire for adding AMP"
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

* item[+].linkId = "marketingauhtorization-amp"
* item[=].type = #open-choice
* item[=].answerValueSet = MAVS
* item[=].required = true
* item[=].text = "Marketing Authorization of the product"

* item[+].linkId = "marketingauhtorization-holder-amp"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = MAHVS
* item[=].text = "Marketing Auhtorization Holder"

* item[+].linkId = "brandname-amp"
* item[=].type = #string
* item[=].required = true
* item[=].text = "Brand Name"


Instance: questionnaire-ampp
InstanceOf: Questionnaire
Description: "Questionnaire for adding a drug level of AMPP to a fhir server"
Title:    "AMPP Questionnaire"

* identifier[0].system = "http://hl7belgium.org"
* identifier[0].value = "questionnaire-ampp"

* name = "questionnaire-ampp"
* title = "Questionnaire for adding AMPP"
* status = #active
* item[+].linkId = "code-ampp"
* item[=].type = #integer
* item[=].required = false
* item[=].text = "Code for the product"

* item[+].linkId = "ingredient"
* item[=].type = #group
* item[=].required = true


* item[=].text = "Ingredient"
* item[=].repeats = true

* item[=].item[+].linkId = "ingredient-ampp"
* item[=].item[=].type = #open-choice
* item[=].item[=].answerValueSet = ingredientVS
* item[=].item[=].required = true
* item[=].item[=].text = "Ingredient for the product"

* item[=].item[+].linkId = "strength-ampp"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].text = "Strength of the ingredient of the product"

* item[=].item[+].linkId = "role-ampp"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = rolevs
* item[=].item[=].required = true
* item[=].item[=].text = "Roles of the ingredient of the product"


* item[+].linkId = "doseform-ampp"
* item[=].type = #choice
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medication-form-codes"
* item[=].required = true
* item[=].text = "Dose Form of the product"

* item[+].linkId = "route-ampp"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/route-codes"
* item[=].text = "Route of administration"
* item[=].repeats = true

* item[+].linkId = "marketingauhtorization-ampp"
* item[=].type = #choice
* item[=].answerValueSet = MAVS
* item[=].required = true
* item[=].text = "Marketing Authorization of the product"

* item[+].linkId = "marketingauhtorization-holder-ampp"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = MAHVS
* item[=].text = "Marketing Auhtorization Holder"

* item[+].linkId = "brandname-ampp"
* item[=].type = #string
* item[=].required = true
* item[=].text = "Brand Name"

* item[+].linkId = "packsize-ampp"
* item[=].type = #quantity
* item[=].required = true
* item[=].text = "Package Size"

* item[+].linkId = "packtype-ampp"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/medicationknowledge-package-type"
* item[=].text = "Packaging Type"


