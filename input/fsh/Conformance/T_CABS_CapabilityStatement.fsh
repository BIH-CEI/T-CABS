Instance: T-CABS-ServerCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://bih-cei.github.io/T-CABS/CapabilityStatement/T-CABS-ServerCapabilityStatement"
* version = "0.2.0"
* name = "TCabsServerCapabilityStatement"
* title = "T-CABS Server Capability Statement"
* status = #draft
* experimental = false
* date = "2026-02-24"
* publisher = "BIH-CEI"
* description = "CapabilityStatement describing the expected capabilities of a server processing telemedical ventilation monitoring data according to the T-CABS Implementation Guide."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* implementationGuide = "https://bih-cei.github.io/T-CABS/ImplementationGuide/t-cabs"

// REST Server
* rest.mode = #server
* rest.documentation = "A FHIR server conforming to T-CABS shall support all profiles defined in this IG and accept transaction Bundles for data upload from ventilation devices and vital sign monitors."

// Security
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.description = "Server should support OAuth2 for authorization. Specific security requirements are implementation-dependent."

// System-level interaction
* rest.interaction.code = #transaction

// --- Patient ---
* rest.resource[0].type = #Patient
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-patient"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #search-type

// --- Encounter ---
* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-encounter-kontakt"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #search-type

// --- Organization ---
* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-organisation"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type

// --- Practitioner ---
* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-practitioner-personmitfunktion"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type

// --- PractitionerRole ---
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-practitioner-funktion"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type

// --- Group ---
* rest.resource[+].type = #Group
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-group-patientengruppe"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type

// --- DiagnosticReport ---
* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-diagnosticreport-visitenbefund"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type

// --- Procedure ---
* rest.resource[+].type = #Procedure
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-procedure-beatmung"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type

// --- Device (PoCD: MDS, VMD, Channel + PHD: PHD, PHG) ---
* rest.resource[+].type = #Device
* rest.resource[=].supportedProfile[0] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-phd"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-phg"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned

// --- DeviceMetric ---
* rest.resource[+].type = #DeviceMetric
* rest.resource[=].supportedProfile = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-devicemetric-numericmetric"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned

// --- Observation (alle Vitalparameter + Beatmungsparameter) ---
* rest.resource[+].type = #Observation
// Vitalparameter
* rest.resource[=].supportedProfile[0] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-arteriellespo2"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-arteriellerblutdruck"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-herzfrequenz"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-koerpertemperatur"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-koerpergewicht"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-bmi"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-gehstrecke"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observationhandgriffstaerke"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observationfev1"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observationfev6"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observationfev1fev6"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observationfev1fef25-75"
// Beatmungsparameter
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ahi"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-amv"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemzeitverhaeltnis"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-druck-minmax"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-leckage"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-peep"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ti"
* rest.resource[=].supportedProfile[+] = "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-triggeredbreaths"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
