//based on R5

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
    "Level 2 Axillary Lymph Nodes"
    "Level II is lying underneath the pectoralis minor muscle."
* #ASSOCCOND  
    "Level 3 Axillary Lymph Nodes"
    "Level III is above the pectoralis minor muscle."

// Define a local code system
CodeSystem: RelatedMedicationKnowledgeCS
Id:         rel-med-cs
Title: ""
Description: ""
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/relMedCS
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #BD  
    "Level 2 Axillary Lymph Nodes"
    "Level II is lying underneath the pectoralis minor muscle."
* #IT  
    "Level 2 Axillary Lymph Nodes"
    "Level II is lying underneath the pectoralis minor muscle."


// Define a local code system
CodeSystem: DrugCharacteristicCS
Id:         drug-char-cs
Title: "Drug charachteristisc Code System"
Description: "Codes for drugCharchteristics"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/productType
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #DT  
    "Drug Type"
    "Level II is lying underneath the pectoralis minor muscle."
* #GRA
    "Granularity"
    "Level III is above the pectoralis minor muscle."
* #DOM
    "Domain of drug "
    " "
* #VER
    "Version"
    " "
* #CT
    "ContraIndication"
    " "

Profile: MedicationMine
Parent: MedicationKnowledge

* identifier MS
* code MS
* status MS
* author MS
* sponsor MS
* doseForm MS
* synonym MS
* amount MS
* productType MS
* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #pattern
* medicineClassification ^slicing.discriminator.path = "code"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    indication 0..* MS and 
    associatedCondition 0..* MS and
    mechanismOfAction 0..* MS
* medicineClassification[indication].type = type-med-class-cs#IND
* medicineClassification[associatedCondition].type = type-med-class-cs#ASSOCCOND
* medicineClassification[mechanismOfAction].type = type-med-class-cs#ASSOCCOND

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #pattern
* drugCharacteristic ^slicing.discriminator.path = "code"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    granularity 1..1 MS and 
    contraindication 0..* MS and 
    drugType 0..1 MS 
* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT
* drugCharacteristic[granularity].type = drug-char-cs#GRA
* drugCharacteristic[contraindication].type = drug-char-cs#CT

* kineticCharacteristic MS
* clinicalUseIssue MS
* monograph MS
* intendedRoute	MS
* ingredient MS
* regulatory MS
* packaging MS
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #pattern
* relatedMedicationKnowledge ^slicing.discriminator.path = "code"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    basedOn 0..1 MS and //item reference is not for medicationKnowledge
    interaction 0..1 MS
* relatedMedicationKnowledge[basedOn].type =  rel-med-cs#BD
* relatedMedicationKnowledge[interaction].type =  rel-med-cs#IT

