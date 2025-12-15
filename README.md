# MAT-TSL-documentation

Documentation for MAT:TSL

Documentation license is in file LICENSE.md

# Documentatio structure

```
docs/
│
├── PlayerGuide/                   # Guida per i giocatori
│   ├── index.md                   # Introduzione generale alla guida
│   ├── GettingStarted.md          # Come iniziare il gioco
│   ├── Controls.md                # Comandi (mouse, tastiera, controller)
│   ├── Combat.md                  # Sistema di combattimento
│   ├── SkillsAndPerks.md          # Abilità, perk, livelli
│   ├── ItemsAndInventory.md       # Armi, armature, oggetti, crafting
│   ├── Quests.md                  # Tipologie di quest e meccaniche
│   ├── WorldMap.md                # Mappe e luoghi principali
│   ├── Factions.md                # Descrizione fazioni presenti
│   ├── Bestiary.md                # Nemici e creature
│   └── TipsAndTricks.md           # Consigli e strategie
│
├── GameBible/                      # Documentazione interna lore/setting
│   ├── index.md                   # Introduzione alla game bible
│   ├── WorldBuilding/             # Mondo e ambientazione
│   │   ├── Geography.md           # Geografia, mappe, biomi
│   │   ├── HistoryTimeline.md     # Timeline storica
│   │   ├── Politics.md            # Politica e fazioni
│   │   ├── CultureAndSociety.md  # Cultura, religione, società
│   │   └── Technology.md          # Tecnologie e macchine
│   ├── Characters/                # Personaggi principali
│   │   ├── Protagonist.md
│   │   ├── NPCs.md
│   │   └── FactionLeaders.md
│   ├── Factions/                  # Fazioni dettagliate
│   │   ├── FactionName1.md
│   │   └── FactionName2.md
│   └── LoreNotes.md               # Appunti minori, retroscena, easter eggs
│
├── DesignDocs/                     # Documentazione tecnica e design
│   ├── index.md
│   ├── GameDesign/                # Design del gameplay
│   │   ├── CoreMechanics.md       # Movimento, combattimento, crafting
│   │   ├── LevelDesign.md         # Livelli, mappe, pacing
│   │   ├── AI.md                  # Intelligenza artificiale
│   │   ├── QuestSystem.md         # Sistema di quest
│   │   ├── Economy.md             # Sistema economico, loot, crafting
│   │   └── UIUX.md                # Interfaccia utente e UX
│   ├── Technical/                 # Specifiche tecniche
│   │   ├── Engine.md              # Motore di gioco, versioni, pipeline
│   │   ├── Rendering.md           # Grafica e shader
│   │   ├── Audio.md               # Sound design e implementazione audio
│   │   ├── Networking.md          # Multiplayer o leaderboard se presenti
│   │   └── Tools.md               # Tool interni, editor, pipeline asset
│   ├── Scripts/                   # Scripts, blueprint, pseudocodice
│   │   └── ScriptIndex.md
│   └── Assets/                    # Lista asset e note su utilizzo
│       ├── Characters.md
│       ├── Props.md
│       ├── Environment.md
│       └── Effects.md
│
├── Production/                     # Documentazione di produzione
│   ├── index.md
│   ├── ProjectPlan.md             # Timeline sviluppo, milestone
│   ├── TaskTracking.md            # Gestione task e team
│   ├── QA/                        # Quality assurance
│   │   ├── TestingProcedures.md
│   │   ├── BugTracking.md
│   │   └── PlaytestingReports.md
│   ├── BuildNotes.md              # Note su build, deploy, packaging
│   └── Changelog.md               # Aggiornamenti principali
│
└── References/                     # Materiale di riferimento
    ├── Books.md
    ├── Games.md
    ├── Articles.md
    └── MediaAssets.md
```

Note sulla struttura

- PlayerGuide -> Per giocatori finali, scritta in linguaggio semplice
- GameBible -> Fondamentale per coerenza narrativa, ogni NPC, luogo o evento deve avere una scheda
- DesignDocs -> Dettagli sul gameplay, sistemi, meccaniche e asset; utile a designer e programmatori
- Production -> Gestione progetto, QA, build e tracking
- References -> Materiale di ispirazione e fonti

