Profile: T_CABS_Group_Patientengruppe
Parent: Group
Id: t-cabs-group-patientengruppe
Title: "T-CABS Patient Group"
Description: "Profile to group patients within the T-CABS study."

* type = #person
* actual = true

* managingEntity only Reference(T_CABS_Practitioner_PersonMitFunktion or T_CABS_Organisation)

* member MS
* member.entity MS
* member.entity only Reference(T_CABS_Patient)

