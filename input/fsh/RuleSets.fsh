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

RuleSet: ProcedureParameter
* category ^slicing.discriminator.type = #type   
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false
* category contains VSCat 1..1 MS
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure

RuleSet: VentilationProcedure
* partOf 1..1 MS
* partOf only Reference(T_CABS_Procedure_Beatmung)