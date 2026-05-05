### Hinweise zur Übersetzung

Dieser Implementation Guide wird in **Englisch** als Quellsprache verfasst. Deutsche Übersetzungen werden als Overlays parallel zur englischen Quelle gepflegt.

#### Organisation der Übersetzungen

```
input/
├── pagecontent/                 # Englisch (Default-Sprache) — Quelle der Wahrheit
└── translations/
    └── de/
        ├── pagecontent/         # Deutsche Übersetzungen — identische Dateinamen
        └── *.po                 # Übersetzte Resource-Felder (Titel, Beschreibungen)
```

Wenn du über den Sprach-Switcher im Seitenkopf eine andere Sprache als Englisch auswählst, liefert der Publisher die übersetzte Version der Seite — sofern vorhanden. Fehlt eine Übersetzung, fällt die Seite auf das englische Original zurück.

#### Übersetzungspolitik

- **Quellsprache:** Englisch (`en`)
- **Verfügbare Übersetzungen:** Deutsch (`de`)
- Übersetzungen werden im Best-Effort-Verfahren mit der englischen Quelle synchron gehalten. Während der Entwicklungsphase können kleinere Formulierungsabweichungen auftreten.
- Metadaten auf Ressourcenebene (Profil-Titel, Element-Beschreibungen) werden über Gettext-`.po`-Dateien übersetzt, die der IG Publisher automatisch generiert.

#### Feedback zur Übersetzung

Fehler entdeckt, holprige Formulierung gefunden oder eine fehlende Übersetzung bemerkt? Bitte ein Issue eröffnen:

➡️ **[T-CABS GitHub Issues](https://github.com/BIH-CEI/T-CABS/issues)**

Bitte beim Melden einer Übersetzungs-Issue angeben:
- Betroffene Seite oder Ressource (URL)
- Zielsprache (`de`)
- Aktueller Text und dein Korrekturvorschlag

Pull Requests mit Übersetzungs-Korrekturen sind ebenfalls willkommen.
