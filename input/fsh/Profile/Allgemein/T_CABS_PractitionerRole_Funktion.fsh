Profile: T_CABS_PractitionerRole_Funktion
Parent: PractitionerRole
Id: t-cabs-practitioner-funktion
Title: "T-CABS Function"
Description: "Profile for a function of a person within the T-CABS study"
* code MS
* practitioner 1..1 MS
* organization 1..1 MS

Instance: tcabs-practitioner-role-example
InstanceOf: T_CABS_PractitionerRole_Funktion
Usage: #example
Title: "T-CABS PractitionerRole Function Example"
Description: "Example of a PractitionerRole for a pulmonologist in the T-CABS study"
* active = true
* practitioner = Reference(tcabs-practitioner-example)
* organization = Reference(CABS)
* code[+]
  * coding[+]
    * system = "http://snomed.info/sct"
    * code = #41672002
    * display = "Respiratory physician"
  * coding[+]
    * system = "urn:oid:1.2.276.0.76.5.514"
    * code = #140
    * display = "Innere Medizin und Pneumologie"
