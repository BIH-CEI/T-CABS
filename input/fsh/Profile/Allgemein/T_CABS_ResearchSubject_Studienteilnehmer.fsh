Profile: T_CABS_ResearchSubject_Studienteilnehmer
Parent: ResearchSubject
Id: t-cabs-researchsubject-studienteilnehmer
Title: "T-CABS ResearchSubject Studie"
Description: "Profil um Patienten innerhalb der Studie referenzieren können"

* identifier ^short = "StudienId des/der Patienten/in" 

* period ^definition = "Ein und Austritt der Studie"

* study only Reference(t-cabs-researchstudy-studie)

* individual only Reference(t-cabs-patient)

