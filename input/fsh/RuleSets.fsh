RuleSet: Grenzwertdefinition
* referenceRange MS
* referenceRange ^definition = "Grenzwerte des jeweiligen Parameters."
  * low MS 
  * low ^short = "Untere Grenze des Parameters."
    * value 1..1 MS
    * unit MS
    * system = $UCUM
    * code 1..1 MS 
  * high MS 
  * high ^short = "Obere Grenze des Parameters."
    * value 1..1 MS
    * unit MS
    * system = $UCUM
    * code 1..1 MS
  * type = $cs-referenceRangeMeaning#therapeutic


RuleSet: Vitalparameter
* category.coding ^slicing.discriminator.type = #type   
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false
* category.coding contains VSCat 1..1 MS
* category.coding[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

RuleSet: Beatmungsprozedur
* partOf 1..1 MS
* partOf only Reference(T_CABS_Procedure_Beatmung)