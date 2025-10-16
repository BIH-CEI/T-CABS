Profile: T_CABS_Organisation
Parent: Organization
Id: t-cabs-organisation
Title: "T-CABS Organisation"
Description: "Profil für eine Organisation die mit T-CABS Studie in Verbindung steht"

* name 1..1 MS
* identifier MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

Instance: beispiel-provider-jochum
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Beispiel Provider Jochum"
Description: "Beispiel für den Beatmungsgeräte-Provider Jochum"
* name = "Jochum GmbH"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-JOCHUM-001"

Instance: beispiel-provider-loewenstein
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Beispiel Provider Löwenstein"
Description: "Beispiel für den Beatmungsgeräte-Provider Löwenstein"
* name = "Löwenstein Medical"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-LOEW-001"

Instance: beispiel-provider-vivisol
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Beispiel Provider Vivisol"
Description: "Beispiel für den Beatmungsgeräte-Provider Vivisol"
* name = "Vivisol Deutschland GmbH"
* identifier.system = "http://tcabs.example.org/providers"
* identifier.value = "PROV-VIVISOL-001"


Instance: CABS
InstanceOf: T_CABS_Organisation
Usage: #example
Title: "Centrum für Außerklinische Beatmung und Sauerstofftherapie (CABS)"
Description: "Das Centrum für Außerklinische Beatmung und Sauerstofftherapie (CABS) der Klinik betreut Patient:innen mit Erkrankungen der Lunge, der Muskulatur oder des Nervensystems, die vorübergehend oder dauerhaft auf Unterstützung der Atmung angewiesen sind und ist Teil des zertifizierten Weaningzentrums der Klinik. "
* active = true
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