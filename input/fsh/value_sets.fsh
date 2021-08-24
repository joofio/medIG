
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
    ""
* #MEDOF  
    "Is a Medicine Of"
    ""
* #PACKOF
    "Packaged Form of "
    ""
* #PHARMOF
    "Is the Pharmaceutical product of "
    ""
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
    ""
* #DOM
    "Domain of drug "
    " "
* #VER
    "Version"
    " "
* #CT
    "ContraIndication"
    " "
* #MA
    "marketing Authorization"
    " "
* #MAH
    "marketing Authorization Holder"
    " "
* #MAS
    "marketing Authorization Status"
    " "

* #TRIAL
    "Clinical Trial"
    " "
* #BATCH
    "Batch Number"
    " "


// Define a local code system
CodeSystem: MedicineCodeSystem
Id:         drug-cs
Title: "Drug Code System"
Description: "Codes for "
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/medicineCS
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #SUBST  
    "Substance"
    ""
* #PHARMPROD
    "pharmaceutical product"
* #MEDPROD
    "Medicinal Product"
* #PACKMEDPROD
    "Packaged Medicinal Product"


// @Name: Include Single Codes
// @Description: Value set with explicit codes
Alias: medCS = http://terminology.hl7.org/CodeSystem/medicineCS

ValueSet: GranularityVS
Id: granularity-vs
Title: "Granularity Value Set"
Description: "Indicates the granularity of product"
* medCS#subs  "Substance"
* medCS#MEDPROD  "med product"
* medCS#MEDPACKPROD  "package product"
* medCS#PHARMPROD " "
