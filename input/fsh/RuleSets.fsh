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

RuleSet: DeviceAlertBase
* code = $cs-device-alert#device-alert "Device Alert"
* subject only Reference(T_CABS_Patient)
* subject 1..1 MS
* extension contains
    T_CABS_Ext_DeviceAlertStatus named alertStatus 1..1 MS and
    T_CABS_Ext_DeviceAlertCode named alertCode 1..1 MS and
    T_CABS_Ext_DeviceAlertPresence named alertPresence 1..1 MS and
    T_CABS_Ext_DeviceAlertOccurrence named alertOccurrence 0..1 MS and
    T_CABS_Ext_DeviceAlertLimit named alertLimit 0..1 and
    T_CABS_Ext_DeviceAlertType named alertType 0..1 MS and
    T_CABS_Ext_DeviceAlertPriority named alertPriority 0..1 MS and
    T_CABS_Ext_DeviceAlertDevice named alertDevice 0..1 MS and
    T_CABS_Ext_DeviceAlertDerivedFrom named alertDerivedFrom 0..* and
    T_CABS_Ext_DeviceAlertLabel named alertLabel 0..1 and
    T_CABS_Ext_DeviceAlertSignal named alertSignal 0..*