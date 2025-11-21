Profile: T_CABS_Organisation
Parent: Organization 
Id: t-cabs-organisation
Title: "T-CABS Organization"
Description: "Profile for an organization associated with the T-CABS study.
Compatibility:
The T_CABS_Organisation profile aims for compatibility with the ISiKOrganisation version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Organisation are also valid against the [ISiKOrganisation](https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation)"

* name 1..1 MS
* identifier MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

Instance: beispiel-provider-jochum
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Example Provider Jochum"
Description: "Example for the ventilation equipment provider Jochum"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
* name = "Jochum GmbH"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-JOCHUM-001"

Instance: beispiel-provider-loewenstein
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Example Provider Löwenstein"
Description: "Example for the ventilation equipment provider Löwenstein"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
* name = "Löwenstein Medical"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-LOEW-001"

Instance: beispiel-provider-vivisol
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Example Provider Vivisol"
Description: "Example for the ventilation equipment provider Vivisol"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
* name = "Vivisol Deutschland GmbH"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-VIVISOL-001"


Instance: CABS
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS)"
Description: "The Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS) of the clinic cares for patients with diseases of the lungs, muscles or nervous system who are temporarily or permanently dependent on respiratory support and is part of the clinic's certified weaning center."
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
* active = true
* identifier.system = "http://tcabs.example.org/cabs"
* identifier.value = "CABS-001"
* name = "Centrum für Außerklinische Beatmung und Sauerstofftherapie (CABS)"
* type[+]
  * coding[+]
    * system = "http://terminology.hl7.org/CodeSystem/organization-type"
    * code = #prov
    * display = "Healthcare Provider"
* name = "Charité Campus Mitte"
* telecom[+]
  * system = #phone
  * value = "+49 30 450 550 137"
  * use = #work
* telecom[+]
  * system = #email
  * value = "cabs@charite.de"
  * use = #work
* address[+]
  * use = #work
  * type = #both
  * line[+] = "Charitéplatz 1"
  * line[+] = "Sauerbruchweg 3, Ebene 3"
  * city = "Berlin"
  * postalCode = "10117"
  * country = "DE"

Instance: beispiel-provider-doccla
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Example Provider Doccla"
Description: "Example for the vital parameter provider Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
* name = "Doccla Deutschland GmbH"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-DOCCLA-001"