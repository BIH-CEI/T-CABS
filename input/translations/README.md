# Mehrsprachigkeit / Multi-Language Support

Dieses Verzeichnis enthält Übersetzungen für den T-CABS-IG. Konventionen folgen der
[FHIR Multi-Language Guidance](https://build.fhir.org/ig/FHIR/ig-guidance/languages.html).

## Standardsprache & Layout

Standardsprache des IG ist **Englisch**. Deutsch wird als Übersetzung gepflegt.

```
input/
├── pagecontent/                 # Default-Sprache (Englisch): narrative Seiten
└── translations/
    └── de/                      # Deutsche Übersetzung
        ├── pagecontent/         # Übersetzte Seiten — Dateiname identisch zur englischen Version
        └── *.po                 # Übersetzte Resource-Felder (Title, Description, Element-Definitionen)
```

## sushi-config.yaml

```yaml
parameters:
  i18n-default-lang: en
  i18n-lang:
    - de
  translation-sources:
    - input/translations/de
```

Der Sprach-Switcher kommt vom Template `fhir2.base.template#current` (siehe `ig.ini`).

## Workflow: Resourcen übersetzen

1. Einmal bauen (`./_build.sh`). Der IG Publisher generiert PO-Templates unter
   `translations/de/po/` (neben `output/`, **nicht** in `input/`).
2. Relevante `.po`-Datei nach `input/translations/de/` kopieren und die `msgstr ""`-Zeilen
   mit deutschem Text füllen — beliebiger Texteditor oder [Poedit](https://poedit.net/).
3. Erneut `./_build.sh` aufrufen — der IG rendert mit deutschen Overlays.

PO-Beispiel:

```po
#: StructureDefinition.title
msgid "Ventilation Pressure Min/Max"
msgstr "Beatmungsdruck Min/Max"

#: StructureDefinition.description
msgstr "Profil für die Erfassung von Beatmungsdrücken"
msgstr "Profile for capturing ventilation pressures"
```

## Workflow: Seiten übersetzen

Eine Kopie der englischen Seite unter `input/translations/de/pagecontent/` mit **identischem
Dateinamen** ablegen. Der Publisher matcht automatisch.

Aktueller Stand:
- `input/pagecontent/` — englische Quellen (Default)
- `input/translations/de/pagecontent/` — deutsche Übersetzungen
- `input/pagecontent-de/` — Legacy-Verzeichnis aus Pre-i18n-Zeit (kann nach erfolgreicher Migration entfernt werden)

Fehlende Übersetzungen fallen automatisch auf die englische Default-Version zurück.
