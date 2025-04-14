Profile: T_CABS_Observation_Atemfrequenz
Parent: SD_MII_ICU_Atemfrequenz
Id: t-cabs-observation-atemfrequenz
Title: "T-CABS Observation Atemfrequenz"
Description: "Profil für die Atemfrequenz per Doccla"


// Wer hat die Messung vorgenommen? Patient / Practinioner?
* performer MS


* code.coding[loinc] = $LOINC#9279-1 "Respiratory Rate"

// Messmethode der Atemfrequenz per Doccla?
* method MS

// Messgerät
* device 1..1 MS
* device only Reference(t-cabs-device-messgeraet)


