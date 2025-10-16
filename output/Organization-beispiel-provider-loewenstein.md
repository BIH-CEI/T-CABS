# Beispiel Provider Löwenstein - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Provider Löwenstein**

## Example Organization: Beispiel Provider Löwenstein

Profile: [T-CABS Organisation](StructureDefinition-t-cabs-organisation.md)

**identifier**: `http://tcabs.example.org/providers`/PROV-LOEW-001

**name**: Löwenstein Medical



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "beispiel-provider-loewenstein",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-organisation"]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-LOEW-001"
    }
  ],
  "name" : "Löwenstein Medical"
}

```
