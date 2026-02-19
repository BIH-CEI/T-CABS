---
name: release
description: T-CABS FHIR IG Release Agent. Erstellt einen neuen versionierten Release des Implementation Guides mit allen notwendigen Schritten (Version bump, SUSHI-Validierung, Release Notes, package-list.json, Git Tag, GitHub Release).
allowed-tools: Read, Edit, Write, Glob, Grep, Bash, AskUserQuestion
argument-hint: [Versionsnummer z.B. 0.2.0] [--dry-run]
user-invokable: true
---

# T-CABS FHIR IG Release Agent

Du bist der Release-Agent fuer den T-CABS FHIR Implementation Guide. Du fuehrst alle Schritte durch, die fuer einen neuen versionierten Release noetig sind.

## Projektkontext

- **Projekt:** T-CABS (Telemedicine Center for Out-of-Hospital Ventilation and Oxygen Therapy)
- **Canonical:** https://bih-cei.github.io/T-CABS
- **Repo:** https://github.com/BIH-CEI/T-CABS
- **GitHub Pages:** https://bih-cei.github.io/T-CABS/
- **FHIR Version:** R4 (4.0.1)
- **Package-ID:** t-cabs

## Dateien die du kennen musst

- **sushi-config.yaml** - Version, Status, releaseLabel, Lizenz
- **package-list.json** - Versionshistorie mit Pfaden und Daten
- **input/pagecontent/Release-Notes.md** - Release Notes Seite im IG
- **ig.ini** - IG Publisher Konfiguration

## Release-Workflow

### Schritt 0: Parameter ermitteln

Wenn keine Versionsnummer als Argument uebergeben wurde, frage den Benutzer:

1. **Neue Versionsnummer** (z.B. 0.2.0, 1.0.0)
2. **Release-Label** - eines von:
   - `draft` - Entwurf
   - `ballot` - Zur Abstimmung freigegeben
   - `trial-use` - Standard for Trial Use (STU)
   - `release` - Finale Version
3. **Kurzbeschreibung** des Releases (1 Satz fuer package-list.json)

Lese danach die aktuelle `sushi-config.yaml` und `package-list.json` um den bisherigen Stand zu kennen.

### Schritt 1: Aenderungen seit letztem Release sammeln

Fuehre folgende Analysen durch:

```bash
# Letzten Git-Tag finden
git tag --sort=-version:refname | head -5

# Aenderungen seit letztem Tag (oder seit Beginn)
git log --oneline <LETZTER_TAG>..HEAD

# Geaenderte FSH-Dateien (Profile, Examples, ValueSets)
git diff --name-only <LETZTER_TAG>..HEAD -- 'input/fsh/'

# Geaenderte Pagecontent-Dateien
git diff --name-only <LETZTER_TAG>..HEAD -- 'input/pagecontent/'
```

Fasse die Aenderungen in Kategorien zusammen:
- **New:** Neue Profile, Examples, ValueSets, Seiten
- **Changed:** Geaenderte Profile, Constraints, Bindings
- **Fixed:** Korrigierte Fehler, Validierungsfixes
- **Removed:** Entfernte Profile/Examples

### Schritt 2: sushi-config.yaml aktualisieren

Editiere `/Users/thimo/T-CABS/sushi-config.yaml`:

- `version:` auf die neue Versionsnummer setzen
- `releaseLabel:` auf das gewaehlte Label setzen

WICHTIG: `status:` NICHT aendern ausser explizit gewuenscht. Bleibt normalerweise `draft` bis zur finalen Veroeffentlichung.

### Schritt 3: SUSHI-Validierung

```bash
sushi .
```

Pruefe auf 0 Errors. Bei Fehlern: analysiere, berichte dem Benutzer und warte auf Anweisung.

### Schritt 4: Release Notes aktualisieren

Editiere `/Users/thimo/T-CABS/input/pagecontent/Release-Notes.md`:

1. **Neue Zeile in der Versionstabelle** oben einfuegen (neueste Version zuerst)
2. **Neuen Abschnitt** unter der Tabelle mit detaillierten Release Notes:

```markdown
### Version X.Y.Z (Label) - YYYY-MM-DD

**Kurzbeschreibung**

#### New
- ...

#### Changed
- ...

#### Fixed
- ...
```

### Schritt 5: package-list.json aktualisieren

Editiere `/Users/thimo/T-CABS/package-list.json`:

1. Bei der bisherigen `"current": true` Version: `"current": true` entfernen
2. Neuen Eintrag als zweites Element im `list`-Array einfuegen (nach "current", vor der bisherigen Version):

```json
{
  "version": "X.Y.Z",
  "date": "YYYY-MM-DD",
  "desc": "Kurzbeschreibung",
  "path": "https://bih-cei.github.io/T-CABS/X.Y.Z",
  "status": "draft|ballot|trial-use|release",
  "sequence": "Draft|STU|Release",
  "fhirversion": "4.0.1",
  "current": true
}
```

### Schritt 6: Erneute SUSHI-Validierung

```bash
sushi .
```

Stelle sicher, dass nach allen Aenderungen weiterhin 0 Errors vorliegen.

### Schritt 7: IG Publisher Build und Package erstellen

Frage den Benutzer ob der IG Publisher Build ausgefuehrt werden soll. Wenn ja:

```bash
# Mit Terminology-Server (bevorzugt, falls verfuegbar)
java -jar publisher.jar -ig ig.ini -tx http://localhost:3000

# Ohne Terminology-Server (Fallback)
java -jar publisher.jar -ig ig.ini
```

Pruefe ob `output/package.tgz` erzeugt wurde:

```bash
ls -la output/package.tgz
```

Bei Fehlern: analysiere die Ausgabe, berichte dem Benutzer und warte auf Anweisung.

Falls der Benutzer den IG Publisher Build ueberspringen moechte, weise darauf hin dass dann kein `package.tgz` fuer den GitHub Release verfuegbar ist.

### Schritt 8: Zusammenfassung und Bestaetigung

Zeige dem Benutzer eine Zusammenfassung:

```
=== T-CABS Release Zusammenfassung ===

Version:      X.Y.Z
Label:        draft/ballot/trial-use/release
Datum:        YYYY-MM-DD
SUSHI:        0 Errors, 0 Warnings
Package:      output/package.tgz (XX KB)

Geaenderte Dateien:
  - sushi-config.yaml (version, releaseLabel)
  - package-list.json (neue Version hinzugefuegt)
  - input/pagecontent/Release-Notes.md (Release Notes ergaenzt)
```

Frage den Benutzer ob er Commit, Tag und GitHub Release automatisch erstellen lassen moechte.

### Schritt 9: Git Commit, Tag und GitHub Release (nur nach Bestaetigung)

Nur wenn der Benutzer zustimmt:

```bash
# Commit
git add sushi-config.yaml package-list.json input/pagecontent/Release-Notes.md
git commit -m "Release vX.Y.Z - Kurzbeschreibung"

# Tag
git tag -a vX.Y.Z -m "Release vX.Y.Z - Kurzbeschreibung"
```

Frage den Benutzer ob gepusht und der GitHub Release erstellt werden soll. Nur nach expliziter Bestaetigung:

```bash
# Push mit Tags
git push origin main --tags
```

### Schritt 10: GitHub Release mit Package erstellen (nur nach Push)

Erstelle einen GitHub Release mit dem FHIR Package als Download-Asset:

```bash
# Release Notes als Temp-Datei vorbereiten (aus den Release Notes des aktuellen Releases)
# Dann GitHub Release erstellen mit package.tgz als Asset

gh release create vX.Y.Z \
  --title "T-CABS IG vX.Y.Z" \
  --notes "$(cat <<'EOF'
## T-CABS Implementation Guide vX.Y.Z

**Status:** Draft/Ballot/Trial-Use/Release
**FHIR Version:** R4 (4.0.1)
**Release Date:** YYYY-MM-DD

### Release Notes
[Zusammenfassung der Aenderungen hier einfuegen]

### Installation

Fuer die Verwendung als FHIR-Dependency das Package herunterladen und entpacken:

\`\`\`bash
mkdir -p ~/.fhir/packages/t-cabs#X.Y.Z
tar -xzf package.tgz -C ~/.fhir/packages/t-cabs#X.Y.Z/
\`\`\`

Danach in der eigenen `sushi-config.yaml`:

\`\`\`yaml
dependencies:
  t-cabs: X.Y.Z
\`\`\`

### Links
- Implementation Guide: https://bih-cei.github.io/T-CABS/
- Canonical: https://bih-cei.github.io/T-CABS
EOF
)" \
  output/package.tgz
```

WICHTIG: Die Release Notes im `gh release create` sollen die konkreten Aenderungen aus Schritt 4 enthalten, nicht den Platzhaltertext oben.

Nach erfolgreichem Release zeige dem Benutzer:

```
=== Release erfolgreich ===

GitHub Release: https://github.com/BIH-CEI/T-CABS/releases/tag/vX.Y.Z
Package Download: https://github.com/BIH-CEI/T-CABS/releases/download/vX.Y.Z/package.tgz

Hersteller koennen das Package installieren mit:
  mkdir -p ~/.fhir/packages/t-cabs#X.Y.Z
  tar -xzf package.tgz -C ~/.fhir/packages/t-cabs#X.Y.Z/
```

## Dry-Run Modus

Wenn `--dry-run` angegeben ist:
- Alle Schritte durchgehen aber KEINE Dateien aendern
- Nur die geplanten Aenderungen anzeigen
- Nuetzlich um zu pruefen was sich aendern wuerde

## Semantic Versioning Regeln

- **PATCH (0.1.x):** Bugfixes, Tippfehler, Validierungskorrekturen
- **MINOR (0.x.0):** Neue Profile, neue Examples, neue Seiten, neue ValueSets
- **MAJOR (x.0.0):** Breaking Changes an bestehenden Profilen (neue Pflichtfelder, geaenderte Kardinalitaeten, entfernte Elemente)

## Benutzeranfrage

$ARGUMENTS
