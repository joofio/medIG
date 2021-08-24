Logical: MedicationKnowledgeMine
Title: "Medication Knowledge by me logical model"

* identifier 0..* Identifier "" ""
* code 0..* CodeableConcept "" ""
* version 0..1 string "" ""
* regulatoryStatus 0..1 string "" ""
* domain 0..1 string "" ""
* indication 0..* CodeableConcept "" ""
* associatedCondition 0..* CodeableConcept "" ""
* name 1..* BackboneElement "" ""
  * productName 1..1 string "" ""
  * type 1..1  CodeableConcept "" ""
  * namePart 0..* BackboneElement "" ""
    * part 1..1 string "" ""
    * type 1..1 CodeableConcept "" ""
  * countryLanguage 0..* BackboneElement "" ""
    * country 1..1 CodeableConcept "" ""
    * jurisdiction 0..1 CodeableConcept "" ""
    * language 1..1 CodeableConcept "" ""
* granularity 0..1  CodeableConcept "" ""
* kinetics 0..1 BackboneElement "" ""
  * areaUnderCurve 0..1 BackboneElement "" ""
    * value 1..1 decimal "" ""
    * unit 1..1 string "" ""
  * halfLifePeriod 0..1 BackboneElement "" ""
    * value 1..1 duration "" ""
    * administration 1..1 BackboneElement "" ""
      * route 0..1 string "" ""
      * unit 1..1 string "" ""
      * quantity 1..1 decimal "" ""
  * bioavailability 0..1 BackboneElement "" ""
    * value 1..1 decimal "" ""
    * unit 1..1 string "" ""
    * route 0..1 string "" ""
  * elimination 0..* string "" ""
  * LD50 0..1 BackboneElement "" ""
    * value 1..1 decimal "" ""
    * unit 1..1 string "" ""
    * route 0..1 string "" ""
    * document 0..1 Reference(DocumentReference) "" ""
    * specimen 0..1 string "" ""
* mechanismOfAction 0..1 string "" ""
* drugType 0..1 string "" ""
* sideEffects 0..* CodeableConcept "" ""
* interactions 0..* BackboneElement "" ""
  * type 1..1 string "" ""
  * substance 1..1 Reference(MedicationKnowledge) "" ""
  * reaction 0..1 string "" ""
  * risklevel 0..1 string "" ""
* contraindication 0..* CodeableConcept "" ""
* monograph 0..* Reference(DocumentReference) "" ""
* masterfile 0..* Reference(DocumentReference) "" ""
* classification 0..* CodeableConcept "" ""
* drugcharacteristics 0..* CodeableConcept "" ""
* administratitionRoute 1..* BackboneElement "" ""
  * route 1..1 CodeableConcept "" ""
  * type 1..1 string "" ""
* ingredient 0..* BackboneElement "" ""
  * reference 1..1 Reference(MedicationKnowledge) "" ""
  * role 1..1 string "" ""
  * strength 1..1 BackboneElement "" ""
    * numerator 1..1 BackboneElement  "" ""
      * value 1..1 decimal "" ""
      * system 1..1 string "" ""
      * code 1..1 string "" ""
    * denominator 0..1 BackboneElement "" ""
      * value 1..1 decimal "" ""
      * system 1..1 string "" ""
      * code 1..1 string "" ""
* pharmaceuticalForm 1..1 CodeableConcept  "" ""
* pharmacoeconomics 0..1 BackboneElement "" ""
  * value 1..1 string "" ""
  * unit 1..1 string "" ""
  * source 1..1 Reference(DocumentReference) "" ""
  * condition 0..1 CodeableConcept "" ""
* marketingAuthorization 0..1 Reference "" "" //RegulatedAuthorization
* marketingAuthorizationHolder 0..* Reference(Organization) "" ""
* clinicalTrial 0..* Reference(ResearchStudy) "" ""
* copayment 0..1 CodeableConcept "" ""
* package 0..* BackboneElement "" ""
  * description 0..1 markdown "" ""
  * type 0..1 CodeableConcept "" ""
  * closureType 0..1 CodeableConcept "" ""
  * size 0..1 integer "" ""
* cost 0..1 BackboneElement "" ""
  * type 1..1 CodeableConcept "" ""
  * source 0..1 string "" ""
  * cost 1..1 Money "" ""
* administrationinstructions 0..1 markdown "" ""
* productImage 0..* Reference(Binary) "" ""
* batch 0..1 BackboneElement "" ""
  * lotNumber 0..1 string "" ""
  * expirationDate 0..1 dateTime "" ""
* impurity 0..* Reference "" "" //SubstanceDefinition