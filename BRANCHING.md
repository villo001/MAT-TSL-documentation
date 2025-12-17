# Branching Consistente per la Documentazione

Questo documento spiega come usare il **branching** in modo coerente durante la stesura della documentazione di *Mediterranean Atomic Tales – The Sunken Land*.

---

## 1️ Concetto di base

Ogni **branch** rappresenta un **flusso di lavoro isolato**.  
In documentazione, puoi usare il branching per:

- Scrivere nuovi capitoli o sezioni senza alterare la versione pubblica (`main` o `master`).
- Fare modifiche importanti alla struttura (`index.md`, `complete_index.md`).
- Sperimentare con stili di scrittura o layout Jekyll senza rompere il sito live.

---

## 2️ Branch principali consigliati

| Branch | Scopo |
|--------|-------|
| `main` / `master` | Versione stabile della documentazione pubblicata su GitHub Pages. Tutti i link funzionano, build Jekyll ok. |
| `develop` | Branch di integrazione: contiene tutte le modifiche in corso di revisione prima di essere mergeate su `main`. |
| `feature/<nome>` | Branch temporanei per scrivere nuove sezioni o capitoli (`feature/neo-atlantropa`, `feature/playerguide`). |
| `fix/<nome>` | Correzioni di typo, link, immagini, front matter. |
| `refactor/<nome>` | Modifiche strutturali, spostamento file, rifacimento index.md, cambi permalink, ecc. |

> Consiglio: mantieni `main` sempre deployabile su GitHub Pages, e usa `develop` come area di integrazione.

---

## 3️ Flusso operativo consigliato

### A. Creazione di una nuova funzionalità / sezione

```bash
git checkout develop          # assicurati di partire dall’ultimo develop
git pull origin develop
git checkout -b feature/neo-atlantropa
# lavori sul contenuto: .md, index.md, immagini
# Quando finisci, committi frequentemente:
git add .
git commit -m "docs: aggiunta sezione Neo Atlantropa e link in complete_index.md"
```

### B. Merge sul branch di integrazione (develop)
```bash
git checkout develop
git pull origin develop
git merge feature/neo-atlantropa
git push origin develop
```
- Puoi aprire Pull Request su GitHub da feature/... → develop, in modo che altri revisori controllino contenuto, link, front matter, permalinks.

### C. Pubblicazione su main

Quando il contenuto è pronto per la versione live:
```bash
git checkout main
git pull origin main
git merge develop
git push origin main
```
- GitHub Pages rigenererà automaticamente il sito se hai main come branch di pubblicazione.
- Tutti i link e il Jekyll build saranno testati in develop prima del merge.

## 4️ Consigli pratici per documentazione

Branch per sezioni: Ogni grande sezione (designdocs, gamebible, playerguide) può avere il suo branch di feature separato.

Commit chiari: Usa messaggi tipo:
- docs: aggiunta capitolo Geografia
- docs: correzione link complete_index.md
- docs: refactor index.md designdocs

Test locale Jekyll: Prima di fare merge in develop, lancia:
```bash
bundle exec jekyll serve --source docs
``` 
per verificare build e link.



