### Translation Information

This Implementation Guide is authored in **English** as its source language. German translations are maintained as overlays alongside the English source.

#### How translations are organized

```
input/
├── pagecontent/                 # English (default language) — source of truth
└── translations/
    └── de/
        ├── pagecontent/         # German translations — same filenames as English
        └── *.po                 # Translated resource fields (titles, descriptions)
```

When you switch to a language other than English using the language selector in the page header, the publisher serves the translated version of the page if available. If a translation is missing, the page falls back to the English original.

#### Translation policy

- **Source language:** English (`en`)
- **Available translations:** German (`de`)
- Translations are kept in sync with the English source on a best-effort basis. Minor wording differences may occur during the development phase.
- Resource-level metadata (profile titles, element descriptions) is translated via Gettext `.po` files generated automatically by the IG Publisher.

#### Feedback on translations

Found an error, an awkward phrasing, or a missing translation? Please open an issue:

➡️ **[T-CABS GitHub Issues](https://github.com/BIH-CEI/T-CABS/issues)**

When reporting a translation issue, please include:
- The page or resource affected (URL)
- The target language (`de`)
- The current text and your suggested correction

Pull requests with translation fixes are also welcome.
