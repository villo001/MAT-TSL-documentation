---
title: Documentation Architecture
---

# Documentation Architecture – MAT:TSL

Questo documento descrive **l’architettura logica e funzionale**
della documentazione di *Mediterranean Atomic Tales: The Sunken Land*.

Serve come riferimento per:
- capire dove scrivere cosa
- evitare duplicazioni
- mantenere coerenza nel tempo
- facilitare contributi esterni

---

## Principio guida

> **Ogni informazione deve avere una sola fonte primaria.**

- La lore vive nella **Game Bible**
- Il gameplay vive nei **Design Docs**
- Il giocatore vede solo ciò che è nel **Player Guide**
- La produzione è separata dalla creatività

---

## Panoramica ad alto livello

```text
Lore & Worldbuilding  ──┐
                        ├──> Game Design ──> Player Experience
Tecnologia & Sistemi ───┘

Produzione e QA supportano tutto il processo
```

---

## docs/designdocs/
### Scopo
Definire come il gioco funziona.

### Contenuto
- meccaniche di gioco
- sistemi (AI, economia, quest)
- asset e requisiti tecnici
- vincoli tecnologici

### Sottosezioni
- __assets/__ Tipologie di asset, linee guida visive, requisiti tecnici.
- __gamedesign/__ Core loop, combattimento, progressione, quest system, UI/UX.
- __scripts/__ Logica di alto livello, flow delle missioni, trigger narrativi.
- __technical/__ Engine, rendering, audio, networking, strumenti interni.

### Regola fondamentale
Nessuna meccanica esiste senza:
- una giustificazione di design
- un impatto sul gameplay
- un collegamento con il mondo

## docs/gamebible/
### Scopo
Definire cosa esiste nel mondo di gioco.

È la fonte di verità canonica.

### Contenuto
- storia
- geografia
- fazioni
- personaggi
- cultura e società
- tecnologia pre e post-guerra

### Sottosezioni
- __characters/__ Protagonista, NPC, leader di fazione.
- __factions/__ Ideologia, struttura, risorse, relazioni.
- __worldbuilding/__ Geografia, politica, tecnologia, eventi storici.

Include sottosezioni chiave come:
- Adriatic Desert
- Neo Atlantropa
- Timeline storiche

### Regola fondamentale
Se qualcosa non è nella Game Bible: __non è canonico.__

---

## docs/playerguide/
### Scopo
Comunicare il gioco al giocatore finale.

### Contenuto
- sistemi spiegati in modo accessibile
- regole di gioco
- consigli e bestiario
- introduzione al mondo (senza spoiler strutturali)

### Tono
- semplice
- chiaro
- in-universe quando possibile

La Player Guide deriva da Game Bible e Design Docs, non le sostituisce.

---

## docs/production/
### Scopo
Gestire come il progetto viene realizzato.

### Contenuto
- roadmap
- piano di progetto
- build notes
- changelog
- QA e testing

### Sottosezione QA
- bug tracking
- procedure di test
- report di playtesting

Separare produzione e creatività evita:
- confusione
- decisioni non tracciabili
- debito organizzativo

---

## docs/references/
### Scopo
Raccogliere fonti e ispirazioni, non contenuti canonici.

### Contenuto
- libri
- giochi
- articoli
- asset esterni
- riferimenti storici

Nulla in questa sezione è automaticamente canonico.

---

## docs/templates/
### Scopo
Mantenere uniformità e qualità nella documentazione.

### Contenuto
- scheletri per nuovi documenti
- template per timeline
- placeholder strutturati

Ogni nuovo documento dovrebbe partire da qui.

## Flusso consigliato di lavoro
1. __Game Bible__ Definisci cosa esiste
2. __Design Docs__ Decidi come funziona
3. __Player Guide__ Spiega cosa vive il giocatore
4. __Production__  Pianifica e verifica

---

## Anti-pattern da evitare
- Lore nei Design Docs
- Meccaniche nella Game Bible
- Informazioni duplicate
- Decisioni non motivate
- Placeholder lasciati “a tempo indeterminato”

---

## Evoluzione dell’architettura
Questa struttura:
- può evolvere
- non deve rompersi
- va documentata se cambia

Ogni modifica strutturale significativa deve essere registrata in:
- changelog
- build notes
- commit message chiaro

> Un mondo coerente nasce da documentazione coerente.

