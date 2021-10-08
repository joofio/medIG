
// Define a local code system
CodeSystem: MedicineClassificationCS
Id:         type-med-class-cs
Title: "Types of Medicine Classification Value Set"
Description: "Values for classificating medicines"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/medicineClassification
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #IND  
    "Indication"
    ""
* #ASSOCCOND  
    "Associated Condition"
    ""
* #MECHAACTION
   "Mechanism of Action"
    ""

// Define a local code system
CodeSystem: RelatedMedicationKnowledgeCS
Id:         rel-med-cs
Title: ""
Description: ""
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/relMedCS
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #SUBOF  
    "Substance from"
    "Substance from"
* #MEDOF  
    "Is a Medicine of"
    "Is a Medicine of"
* #PACKOF
    "Is a Packaged Form of"
    "Is a Packaged Form of"
* #PHARMOF
    "Is a Pharmaceutical product of"
    "Is a Pharmaceutical product of"

* #VIRTUALPACKOF
    "Is a Virtual Package Form of"
    "Is a Virtual Package Form of"

* #VPHARMOF
    "Is a Virtual Package Form of"
    "Is a Virtual Package Form of"


* #HASG
    "Is a Virtual Package Form of"
    "Is a Virtual Package Form of"



// Define a local code system
CodeSystem: DrugCharacteristicCS
Id:         drug-char-cs
Title: "Drug charachteristisc Code System"
Description: "Codes for drugCharacteristic"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/productType
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #DT  
    "Drug Type"
    "Drug Type"
* #DOM
    "Domain of drug"
    "Domain of drug"
* #VER
    "Version"
    "Version"
* #CT
    "ContraIndication"
    "ContraIndication"
* #MA
    "marketing Authorization"
    "marketing Authorization"
* #MAH
    "marketing Authorization Holder"
    "marketing Authorization Holder"
* #MAS
    "marketing Authorization Status"
    "marketing Authorization Status"

* #TRIAL
    "Clinical Trial"
    "Clinical Trial"
* #BATCH
    "Batch Number"
    "Batch Number"


// Define a local code system
CodeSystem: MedicineCodeSystem
Id:         medics
Title: "Drug Code System"
Description: "Codes for medicine level"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
// Spacing layout over three lines per term is optional, for clarity
* ^url = "http://hl7.org/fhir/us/example/CodeSystem/mediCS"
// The definition (second text string) is optional
* #SUBST  
    "Substance"
    "Substance"
* #PHARMPROD
    "pharmaceutical product"
* #MEDPROD
    "Medicinal Product"
* #PACKMEDPROD
    "Packaged Medicinal Product"
* #VMPP
    "Virtual Medicinal Packaged Product"
* #VMP
    "Virtual Medicinal Product"

 

// Define a local code system
CodeSystem: BEMedicineCodeSystem
Id:         beMedCS
Title: "Drug Code System"
Description: "Codes for belgian medicine level "
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #VMPP
    "Virtual Medicinal Packaged Product"
* #VMP
    "Virtual Medicinal Product"
* #VMPG
    "asdas"

Alias: medCS = http://hl7.org/fhir/us/example/CodeSystem/mediCS


ValueSet: GranularityVS
Id: granularity-vs
Title: "Granularity Value Set"
Description: "Indicates the granularity of product"
* medCS#SUBST  "Substance"
* medCS#PHARMPROD "Pharmaceutical Product"
* medCS#MEDPROD  "Medicinal Product"
* medCS#PACKMEDPROD "Packaged Medicinal Product"


ValueSet: BEGranularityVS
Id: be-granularity-vs
Title: "Be Granularity Value Set"
Description: "Indicates the granularity of product"
* medCS#SUBST  "Substance"
* medCS#PHARMPROD "Pharmaceutical Product"
* medCS#MEDPROD  "Medicinal Product"
* medCS#PACKMEDPROD "Packaged Medicinal Product"
* beMedCS#VMPG "VMP Group"

