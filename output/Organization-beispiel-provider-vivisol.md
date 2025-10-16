# Beispiel Provider Vivisol - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Provider Vivisol**

## Example Organization: Beispiel Provider Vivisol

Profile: [T-CABS Organisation](StructureDefinition-t-cabs-organisation.md)

**identifier**: `http://tcabs.example.org/providers`/PROV-VIVISOL-001

**name**: Vivisol Deutschland GmbH



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "beispiel-provider-vivisol",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-organisation"]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-VIVISOL-001"
    }
  ],
  "name" : "Vivisol Deutschland GmbH"
}

```
