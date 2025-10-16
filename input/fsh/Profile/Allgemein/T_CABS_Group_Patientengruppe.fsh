Profile: T_CABS_Group_Patientengruppe
Parent: Group
Id: t-cabs-group-patientengruppe
Title: "T-CABS Patientengruppe"
Description: "Profil um Patienten innerhalb der T-CABS Studie gruppieren zu können"

* type = #person
* actual = true

* managingEntity only Reference(T_CABS_Practitioner_PersonMitFunktion or T_CABS_Organisation)

* member MS
* member.entity MS
* member.entity only Reference(T_CABS_Patient)

