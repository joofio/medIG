
Instance: example-0-of-drug-med
InstanceOf: substance
Usage: #example
Description: "Example of a drug with granularity 0"
Title:    "Example of drug with granularity 0"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "95"

* code = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* synonym[+] = "Acetaminophen"
* synonym[+] = "paracetamol"
* synonym[+] = "4-(Acetylamino)phenol"

* status = #active

* drugCharacteristic[granularity].valueString = "substance"
* drugCharacteristic[domain].valueString = "human"
* drugCharacteristic[drugType].valueString = "small molecule"


Instance: example-1-of-drug-med
InstanceOf: packagedMedicinalProduct
Usage: #example
Description: "Example of a drug with granularity 1"
Title:    "Example of drug with granularity 1"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "950"

* code = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* doseForm = http://snomed.info/sct#421026006 "Oral Tablet"

* status = #active
* synonym[+] = "Paracetamol Oral Tablets 500 mg"
* amount.value = 500
* amount.unit = "mg" 


* drugCharacteristic[granularity].valueString = "product"

* relatedMedicationKnowledge[basedOn].reference = Reference(example-1-of-drug-med)
 
* relatedMedicationKnowledge[interaction].reference = Reference(example-a-of-drug-med) 

* intendedRoute = http://snomed.info/sct#26643006  "Oral Route" 

Instance: example-2-of-drug-med
InstanceOf: packagedMedicinalProduct
Usage: #example
Description: "Example of a drug with granularity 2"
Title:    "Example of drug with granularity 2"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "9500"

* status = #active

* synonym[+] = "Ben-U-Ron Oral Tablets 500 mg"


* drugCharacteristic[granularity].valueString = "MedicinalProduct"

* drugCharacteristic[marketingAuthorization].valueString = ""
* drugCharacteristic[marketingAuthorizationHolder].valueString = "Bene"
* drugCharacteristic[marketingAuthorizationStatus].valueString = "Aproved"
* drugCharacteristic[clinicalTrial].valueCodeableConcept = http://clinicaltrial-server.fhir.pt#1

Instance: example-3-of-drug-med
InstanceOf: packagedMedicinalProduct
Usage: #example
Description: "Example of a drug with granularity 3"
Title:    "Example of drug with granularity 3"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "95000"

* status = #active

* synonym[+] = "Ben-U-Ron Oral Tablets 500 mg Box of 20 tab"

* drugCharacteristic[granularity].valueString = "MedicinalPackagedProduct"
* packaging[+].cost[+].type  =  http://infarmed.pt/#xxx "official"
* packaging[=].cost[=].costMoney.value  =  3.08
* packaging[=].cost[=].costMoney.currency  = http://iso.org/currency#EUR "Euro"  

* packaging[=].type = http://standardterms.edqm.eu/PAC#30009000 "Box"
* packaging[=].quantity.value  = 20
* packaging[=].quantity.unit = "tablets" 
* drugCharacteristic[batchNumber].valueString = "345-CE-123"

