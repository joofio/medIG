
Instance: example-1-of-drug-med
InstanceOf: MedicationMine
Usage: #example
Description: "Example of a drug with granularity 0"
Title:    "Example of drug with granularity 0"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "95"

* code = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* status = #active

* drugCharacteristic[granularity].valueString = "substance"
* drugCharacteristic[domain].valueString = "human"
* drugCharacteristic[drugType].valueString = "small molecule"


Instance: example-2-of-drug-med
InstanceOf: MedicationMine
Usage: #example
Description: "Example of a drug with granularity 1"
Title:    "Example of drug with granularity 1"

* identifier[0].system = "http://infarmed.pt"
* identifier[0].value = "950"

* code = https://go.drugbank.com/drugs/#DB00316 "Acetaminophen"

* doseForm = http://snomed.info/sct#421026006 "Oral Tablet"

* status = #active

* drugCharacteristic[granularity].valueString = "product"

* relatedMedicationKnowledge[basedOn].reference = Reference(example-1-of-drug-med) 

* intendedRoute = http://snomed.info/sct#26643006  "Oral Route" 