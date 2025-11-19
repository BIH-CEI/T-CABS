RuleSet: ReferenceRangeDefinition
* referenceRange MS
* referenceRange ^short = "Reference ranges for the parameter."
  * low MS 
  * low ^short = "Lower limit of the parameter."
    * value 1..1 MS
    * unit MS
    * system = $UCUM
    * code 1..1 MS 
  * high MS 
  * high ^short = "Upper limit of the parameter."
    * value 1..1 MS
    * unit MS
    * system = $UCUM
    * code 1..1 MS
  * type = $cs-referenceRangeMeaning#therapeutic


RuleSet: VitalParameter
* category.coding ^slicing.discriminator.type = #type   
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false
* category.coding contains VSCat 1..1 MS
* category.coding[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

RuleSet: VentilationProcedure
* partOf 1..1 MS
* partOf only Reference(T_CABS_Procedure_Beatmung)