---
title: Template - Skeleton Documentazione
---
# Game Design Document - Project Wasteland
Versione: Precompilata / Esempio completo

---

## Indice
1. Visione generale  
2. Pitch rapido  
3. Obiettivi di design  
4. Target e piattaforme  
5. Gameplay: meccaniche principali  
6. Sistema di progressione e perk  
7. Combattimento e IA  
8. Quest e struttura narrativa  
9. Mondo di gioco e level design  
10. NPC, fazioni e relazioni  
11. Item, crafting e loot  
12. UI/UX e HUD  
13. Audio & Musica  
14. Grafica & Stile artistico  
15. Tecnologia & Toolchain  
16. Pipeline di produzione e asset list  
17. Milestones & Roadmap  
18. Testing & QA  
19. Localizzazione & Accessibilità  
20. Appendici — esempi concreti e snippet

---

# Visione generale
**Descrizione breve:**  
Project Wasteland è un RPG single-player in prima persona, open-world, con esplorazione, crafting, dialoghi ramificati e combattimenti tattici in stile post-apocalittico.

**Tono e atmosfera:**  
Cupamente ironico, retrofuturistico, con umorismo nero e scelte morali pesanti.

**USP:**  
- Mondo denso di eventi dinamici.  
- Crafting modulare che influisce sulla narrativa.  
- Dialoghi che cambiano relazioni e world state.

---

# Pitch rapido
Il giocatore si risveglia in un rifugio abbandonato dopo decenni. Fuori, un mondo devastato, fazioni ostili e segreti sepolti. Con poche risorse, deve scegliere alleanze, costruire una reputazione e decidere il destino delle comunità superstiti.

---

# Obiettivi di design
- Massima immersione.  
- Scelte significative e conseguenze tangibili.  
- Rigiocabilità elevata.  
- Sviluppo sostenibile per un singolo sviluppatore.

---

# Target e piattaforme
**Piattaforme:** PC (Windows).  
**Hardware minimo:** CPU 4c, 8GB RAM, GPU integrata 2GB.  
**Audience:** 18–45, fan RPG open world.  
**Monetizzazione:** Pay-once.

---

# Gameplay: meccaniche principali
## Controlli principali (PC)
- WASD: movimento  
- Shift: corsa  
- Space: salto  
- F: interazione  
- Tab: inventario  
- 1–4: arma rapida  
- R: ricarica  
- Q: mira  
- Esc: menu

## Meccaniche
- Esplorazione in prima persona.  
- Combattimento con armi da fuoco e melee.  
- Dialoghi con skill check.  
- Crafting di armi, strumenti, medicine.  
- Modalità Survival opzionale.

---

# Sistema di progressione e perk
## Attribute
- Strength  
- Agility  
- Endurance  
- Intelligence  
- Charisma  

## Livelli
- XP da quest, scoperte, crafting, uccisioni.  
- Ogni livello → 1 punto attributo o 1 perk.

## Esempio tabella perk
| Nome | Requisito | Effetto | Tipo |
|---|---|---|---|
| Sneak Strike | AGI ≥ 3 | +150% danno sneak | Combat |
| Heavy Hitter | FOR ≥ 4 | +20% danno melee | Combat |
| Jury Rigging | INT ≥ 3 | Riparazioni più economiche | Crafting |

---

# Combattimento e IA
## Sistema di combattimento
- Armi da fuoco, melee, esplosivi.  
- Mirino opzionale.  
- Danno localizzato (opzionale).

## IA Nemica
Stati IA: Idle → Patrol → Alert → Investigate → Combat → Flee.

### Pseudocode
```
if sees_player:
if distance < melee_range:
if hp > threshold: rush_attack()
else: call_for_help(); fallback_to_cover()
else:
if has_ranged_weapon: engage_ranged()
else: flank_player()
else if hears_noise:
investigate()
else:
patrol()
```

---

# Quest e struttura narrativa
## Tipi di quest
- Main  
- Side  
- Faction  
- Radiant (procedurali)

## Esempio Quest: Old Broadcast
- Tipo: Investigation  
- Obiettivi:  
  1. Raccogli 3 fragments  
  2. Ripara trasmettitore  
  3. Decidi se riattivare o meno  
- Ricompensa: XP, mappa, reputazione.

---

# Mondo di gioco e level design
## Macro-regioni
- Ruins District  
- Ash Flats  
- Green Municipality  
- Industrial Wastes  
- Underground Bunkers

## Luoghi chiave
- Stazione metro Bunker (tutorial)  
- Città in rovina  
- Fattoria isolata  
- Fabbrica meccanica (boss)

---

# NPC, fazioni e relazioni
## NPC Principali
| Nome | Ruolo | Località | Reazione | Quest |
|---|---|---|---|---|
| Evelyn | Alleata | Stazione metro Bunker | Neutrale | Sparks of Hope |
| Marek | Antagonista | Wastes | Ostile | The Iron Claim |

## Fazioni
- Radio Keepers  
- Scrap Brotherhood  
- Green Commune  

Reputazione: -100 → +100.

---

# Item, crafting e loot
## Classi di item
- Consumabili  
- Armi  
- Armature  
- Componenti  
- Blueprint  

## Esempio loot table
```json
{
  "common": [
    {"item":"scrap_metal","chance":0.5},
    {"item":"old_battery","chance":0.2}
  ],
  "rare": [
    {"item":"circuit_board","chance":0.05},
    {"item":"highgrade_spring","chance":0.02}
  ]
}
```

## Esempio blueprint (YAML)
```yaml
weapon_knife_mk2:
  name: "Knife MK2"
  components:
    - {item: scrap_metal, qty: 5}
    - {item: highgrade_spring, qty: 1}
    - {item: leather_strip, qty: 2}
  crafting_time: 60
  durability: 150
  mods_allowed: [edge_upgrade, handle_wrap]
```

---

# UI/UX e HUD
## HUD
- HP
- Stamina / Radiazioni
- Ammo
- Mini-mappa / Compass
- Notifiche

## Inventario
- Grid-based
- Filtri
- Peso con penalità

---

# Audio & Musica
## Audio
- Layer ambientali per regione
- SFX unici per armi e creature

## Musica
- Tema principale
- Cue dinamici
- Radio diegetica

---

# Grafica & Stile artistico
- Palette mutata e sporca.
- Low/mid poly con normal maps.
- Film grain e vignettatura leggere.

---

# Tecnologia & Toolchain
- Unity o Unreal o Godot.
- Dialogue system (Ink/Yarn).
- AI: Behavior Trees.
- Dati in JSON/YAML.

---

# Pipeline di produzione e asset list
## Pipeline
- Concept
- Blockout
- Prototype
- Content
- Polishing
- QA

---

## Asset iniziali
- Player controller
- Armi base
- AI base
- Inventory + UI
- 3 tiles ambienti
- Sistema dialoghi
- Tutorial quest

---

# Milestones & Roadmap
- M0: Documentazione, concept
- M1: Movement + combat prototype
- M2: Inventory, crafting, UI
- M3: Quest principali + fazioni
- M4: Contenuti e polishing
- M5: Alpha test

---

# Testing & QA
- Unit test per salvataggi e economia
- Playtest a checkpoint
- Bugtracker
- Performance test

---

# Localizzazione & Accessibilità
- Sistema stringhe localizzabili
- Sottotitoli
- Tasti rimappabili
- UI ad alto contrasto

---

# Appendici
## NPC Example (JSON)
```json
{
  "id": "npc_evelyn_01",
  "name": "Evelyn",
  "role": "engineer",
  "location": "stazione_metro_bunker",
  "dialogue_tree": "evelyn_intro.json",
  "inventory": ["wrench","scrap_metal"],
  "quests_given": ["sparks_of_hope"]
}
```

## Dialogue Example (Yarn)
```yarn
-> Hi
  Evelyn: "Sei finalmente sveglio."
  -> Ask about the bunker
    Evelyn: "Il bunker è un museo di errori."
    -> Help her
      Evelyn: "Se mi aiuti posso riparare il generatore."
      <<quest: start sparks_of_hope>>
    -> Leave
      Evelyn: "Fatti vedere dopo."
-> Goodbye
  Evelyn: "Stai attento."
```

## Quest Flow (JSON)
```json
{
  "id":"sparks_of_hope",
  "title":"Sparks of Hope",
  "steps":[
    {"id":"find_parts","description":"Find 3 generator parts","type":"collect","qty":3},
    {"id":"repair_generator","description":"Repair with Evelyn","type":"interact","npc":"evelyn"},
    {"id":"decision","description":"Decide broadcast","type":"choice","options":["broadcast","keep_silent"]}
  ],
  "rewards":{"xp":500,"items":["basic_toolkit"]}
}
```

## Weapon Balance Table
|Weapon|Damage|Fire Rate|Range|Notes|
||||||
|.44 Pistol|30|0.7s|50m|Precisa|
|Pipe Rifle|18|0.3s|60m|Veloce|

---

## Encounter Example
### Ambush on Bridge:
- Nemici: 2 melee, 1 rifleman, 1 leader.
- Ambiente: ponte con coperture.
- Approccio: stealth o attacco.
- Ricompense: scrap + chance blueprint.

