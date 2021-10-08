
//based on R4

Profile: Substance
Parent: MedicationKnowledge


//* identifier MS
* code MS
* status MS
//* author MS
//* sponsor MS
* doseForm 0..0 
* synonym MS
* amount 0..0 
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
	productLevel 1..1
* productType[productLevel] = medCS#SUBST

* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    mechanismOfAction 0..* MS
* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    drugType 0..1 MS  

* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT


* administrationGuidelines 0..0
* preparationInstruction 0..0
* monitoringProgram 0..0
* kinetics 0..0
* contraindication MS
* monograph MS
* intendedRoute	0..0
* ingredient 0..0
* regulatory 0..0
* packaging 0..0 
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge.reference MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #value
* relatedMedicationKnowledge ^slicing.discriminator.path = "type"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    isASubstanceFrom 0..* MS  //item reference is not for medicationKnowledge
* relatedMedicationKnowledge[isASubstanceFrom].type =  rel-med-cs#SUBOF


Profile: PharmaceuticalProduct
Parent: MedicationKnowledge

//* identifier MS
* code MS
* status MS
//* author MS
//* sponsor MS
* doseForm MS
* synonym MS
* amount MS
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
	productLevel 1..1
* productType[productLevel] = medCS#PHARMPROD
* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    mechanismOfAction 0..* MS

* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    drugType 0..1 MS  

* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT


* kinetics MS
* contraindication MS
* monograph MS
* intendedRoute	MS
* ingredient MS
* regulatory MS
* packaging 0..0
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge.reference MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #value
* relatedMedicationKnowledge ^slicing.discriminator.path = "type"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    isaPharmaceuticalProductOf 0..* MS 
* relatedMedicationKnowledge[isaPharmaceuticalProductOf].type =  rel-med-cs#PHARMOF

Profile: MedicinalProduct
Parent: MedicationKnowledge

//* identifier MS
* code MS
* status MS
//* author MS
//* sponsor MS
* doseForm MS
* synonym MS
* amount MS
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
	productLevel 1..1
* productType[productLevel] = medCS#MEDPROD
* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    mechanismOfAction 0..* MS

* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    drugType 0..1 MS and 
    marketingAuthorization 0..1 MS and 
    marketingAuthorizationHolder 0..* MS and 
    marketingAuthorizationStatus 1..1 MS  and 
    clinicalTrial 0..* MS 

* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT
* drugCharacteristic[marketingAuthorization].type = drug-char-cs#MA //link together MA and MAH - HOW?
* drugCharacteristic[marketingAuthorizationHolder].type = drug-char-cs#MAH //link together MA and MAH - HOW?
* drugCharacteristic[marketingAuthorizationStatus].type = drug-char-cs#MAS //link together MA and MAH - HOW?
* drugCharacteristic[clinicalTrial].type = drug-char-cs#TRIAL //value should be reference

* kinetics MS
* contraindication MS
* monograph MS
* intendedRoute	MS
* ingredient MS
* regulatory MS
* packaging 0..0
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge.reference MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #value
* relatedMedicationKnowledge ^slicing.discriminator.path = "type"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    isAMedicinalProductOf 0..1 MS  //item reference is not for medicationKnowledge
* relatedMedicationKnowledge[isAMedicinalProductOf].type =  rel-med-cs#MEDOF

Profile: PackagedMedicinalProduct
Parent: MedicationKnowledge

//* identifier MS
* code MS
* status MS
//* author MS
//* sponsor MS
* doseForm MS
* synonym MS
* amount MS
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
	productLevel 1..1
* productType[productLevel] = medCS#PACKMEDPROD
* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains

    mechanismOfAction 0..* MS

* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and

    drugType 0..1 MS and 
    marketingAuthorization 0..1 MS and 
    marketingAuthorizationHolder 0..* MS and 
    clinicalTrial 0..* MS and 
    marketingAuthorizationStatus 0..1 MS and //make mandatory for level2+
    batchNumber  0..1 MS
* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT

* drugCharacteristic[marketingAuthorization].type = drug-char-cs#MA //link together MA and MAH - HOW?
* drugCharacteristic[marketingAuthorizationHolder].type = drug-char-cs#MAH //link together MA and MAH - HOW?
* drugCharacteristic[marketingAuthorizationStatus].type = drug-char-cs#MAS //link together MA and MAH - HOW?
* drugCharacteristic[clinicalTrial].type = drug-char-cs#TRIAL //value should be reference
* drugCharacteristic[batchNumber].type = drug-char-cs#BATCH //add expirationDate?


* kinetics MS
* contraindication MS
* monograph MS
* intendedRoute	MS
* ingredient MS
* regulatory MS
* packaging MS
//* packaging.cost 0..0
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge.reference MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #value
* relatedMedicationKnowledge ^slicing.discriminator.path = "type"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    packagedFormOf 0..1 MS  //item reference is not for medicationKnowledge
   // interaction 0..1 MS
* relatedMedicationKnowledge[packagedFormOf].type =  rel-med-cs#PACKOF
//* relatedMedicationKnowledge[interaction].type =  rel-med-cs#IT -> clinicalIssue





Profile: VirtualPackagedPharmaceuticalProduct
Parent: MedicationKnowledge

* code MS
* status MS
* doseForm MS
* synonym MS
* amount MS
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
	productLevel 1..1
* productType[productLevel] = medCS#VMPP
* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    mechanismOfAction 0..* MS
* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    drugType 0..1 MS  
* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT

* kinetics MS
* contraindication MS
* monograph MS
* intendedRoute	MS
* ingredient MS
* packaging MS
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge.reference MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #value
* relatedMedicationKnowledge ^slicing.discriminator.path = "type"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    VirtualpackageFormOf 0..1 MS  //item reference is not for medicationKnowledge
* relatedMedicationKnowledge[VirtualpackageFormOf].type =  rel-med-cs#VIRTUALPACKOF


Profile: BeVmpGroup
Parent: MedicationKnowledge

//* identifier MS
* code MS
* status MS
//* author MS
//* sponsor MS
* doseForm 0..0
* synonym MS
* amount MS
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
	productLevel 1..1 and
    productNationalLevel 1..1
* productType[productLevel] = medCS#PHARMPROD
* productType[productNationalLevel] = beMedCS#VMPG


* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    mechanismOfAction 0..* MS

* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    drugType 0..1 MS  

* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT

* kinetics MS
* contraindication MS
* monograph MS
* intendedRoute	MS
* ingredient MS




Profile: VMP
Parent: MedicationKnowledge
//almost like pharmaceuticalProduct - returns error with parent with it


//* identifier MS
* code MS
* status MS
//* author MS
//* sponsor MS
* doseForm MS
* synonym MS
* amount MS
* productType MS
* productType ^slicing.discriminator.type = #value
* productType ^slicing.discriminator.path = "$this"
* productType ^slicing.rules = #open
* productType contains
    productLevel 1..1 MS and
    beproductLevel 1..1 MS 

* productType[productLevel] = medCS#PHARMPROD
* productType[beproductLevel] = medCS#VMP
* medicineClassification MS
* medicineClassification ^slicing.discriminator.type = #value
* medicineClassification ^slicing.discriminator.path = "type"
* medicineClassification ^slicing.rules = #open
* medicineClassification ^slicing.ordered = false   // can be omitted, since false is the default
* medicineClassification ^slicing.description = "Slice based on the component.code pattern"
* medicineClassification contains
    mechanismOfAction 0..* MS

* medicineClassification[mechanismOfAction].type = type-med-class-cs#MECHAACTION

* drugCharacteristic MS
* drugCharacteristic ^slicing.discriminator.type = #value
* drugCharacteristic ^slicing.discriminator.path = "type"
* drugCharacteristic ^slicing.rules = #open
* drugCharacteristic ^slicing.ordered = false   // can be omitted, since false is the default
* drugCharacteristic ^slicing.description = "Slice based on the component.code pattern"
* drugCharacteristic contains
    domain 0..1 MS and 
    version 0..1 MS and
    drugType 0..1 MS  

* drugCharacteristic[domain].type = drug-char-cs#DOM
* drugCharacteristic[version].type = drug-char-cs#VER
* drugCharacteristic[drugType].type = drug-char-cs#DT


* kinetics MS
* contraindication MS
* monograph MS
* intendedRoute	MS
* ingredient MS
* regulatory MS
* packaging 0..0
* cost MS
* relatedMedicationKnowledge MS
* relatedMedicationKnowledge.reference MS
* relatedMedicationKnowledge ^slicing.discriminator.type = #value
* relatedMedicationKnowledge ^slicing.discriminator.path = "type"
* relatedMedicationKnowledge ^slicing.rules = #open
* relatedMedicationKnowledge ^slicing.ordered = false   // can be omitted, since false is the default
* relatedMedicationKnowledge ^slicing.description = "Slice based on the component.code pattern"
* relatedMedicationKnowledge contains
    isaPharmaceuticalProductOf 0..* MS and
    isaVirtualPharmaceuticalProductOf 0..* MS and
    hasGroup 0..* MS 

* relatedMedicationKnowledge[isaPharmaceuticalProductOf].type =  rel-med-cs#PHARMOF
* relatedMedicationKnowledge[isaVirtualPharmaceuticalProductOf].type =  rel-med-cs#VPHARMOF
* relatedMedicationKnowledge[hasGroup].type =  rel-med-cs#HASG
