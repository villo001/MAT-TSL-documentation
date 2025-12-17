# Strategia di versioning consigliata per MAT:TSL
Si usa [Semantic Versioning](https://semver.org/lang/it/) "interpretato" per documentazione e design.

## Formato versioni

```
vMAJOR.MINOR.PATCH
```

### PATCH (0.0.X)
Usato quando:
- correzione refusi
- sistemazione link
- riorganizzazione file senza cambiare i contenuti
- migliorie sulla leggibilità

Esempi
- v0.0.2 -> fix link, rename file
- v0.0.3 -> refactor index

### MINOR (0.X.0)

Usato quando:
- si completa una macro-sezione
- si aggiungono contenuti rilevanti ma non "definitivi"
- espandi il worldbuilding

Esempi
- v0.1.0 -> Game Bible completa
- v0.2.0 -> Player Guide giocabile
- v0.3.0 -> Design Docs tecnici

Regola pratica:

"Si cambia MINOR quando un lettore esterno capisce molte più cose di prima."

### MAJOR (1.0.0)

Usato quando:
- lore e visione sono stabili
- le fondamenta non cambieranno più
- si inizia lo sviluppo vero e proprio del gioco
- 1.0.0 non significa gioco finito, ma "Questo mondo non verrà riscritto."

### Regola d’oro
- __Taggare poco ma bene__
- Ogni tag deve poter essere:
  - letto
  - citato
  - condiviso

## Quando creare un tag (checklist mentale)
Si crea un tag quando tutte queste frasi sono vere:
-  la documentazione compila (link ok)
-  la struttura non è "work in progress"
-  si potrebbe dire: "questa versione è consultabile"
-  non ci si vergognerebbe di mostrarla a uno sconosciuto

Se anche una sola è falsa → niente tag.

### Quando NON taggare

- brainstorming
- bozze incomplete
- riorganizzazioni a metà
- "lo sistemo dopo"

## CHANGELOG.md – pronto all’uso

Questo file diventerà __la spina dorsale del progetto__.

È nella root del repository (non in docs/).

### Skeleton Changelog (copiabile)
```
# Changelog
Tutte le modifiche rilevanti a *Mediterranean Atomic Tales – The Sunken Land*
saranno documentate in questo file.

Il progetto segue una forma adattata di **Semantic Versioning**.

---

## [0.0.1] – 2025-12-17
### Added
- Struttura completa della documentazione
- Navigazione coerente tramite index.md
- GitHub Pages funzionante da /docs
- Sezione Player Guide
- Game Bible con worldbuilding iniziale
- Progetto Neo Atlantropa

### Notes
- Prima versione pubblica della documentazione
- Fondamenta concettuali del mondo di gioco

---

## [Unreleased]
### Added
- 
### Changed
- 
### Fixed
-
```
Regola importante

Scriviere sempre le modifiche in __Unreleased__, poi si copiano sotto la nuova versione quando si tagga.

### Workflow consigliato
Ogni ciclo:

- si lavora normalmente
- si aggiorna CHANGELOG.md (Unreleased) se necessario
- si decide "questa è una milestone"
- si sposta Unreleased -> nuova versione
- si crea il tag
- (opzionale) release GitHub

### Best practice extra (consigliata)
Tag sempre con v
- v0.0.1
- v0.1.0
- v1.0.0

Commit di rilascio chiaro
- git commit -m "Release v0.0.1"
- git tag -a v0.0.1 -m "Initial documentation skeleton"
- creazione release tramite webinterface (dal tag)

## Riassunto secco
- Strategia di versioning chiara
- Tag solo su milestone vere
- CHANGELOG.md come fonte di verità
- v0.0.1 = versione iniziale, poi si va avanti
