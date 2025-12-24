# Fazione: Reietti delle Sabbie (Versione Tecnica)

I **Reietti delle Sabbie** sono una fazione nomade e dispersa dell’Alto Adriatico desertificato. Caratterizzati da adattamento estremo e pragmatismo, i Reietti rappresentano un gruppo eterogeneo che si muove tra dune, saline e antiche rovine.

---

## 1. Struttura Sociale

| Ruolo           | Descrizione                                               | Funzioni in-game                                            |
|-----------------|-----------------------------------------------------------|-------------------------------------------------------------|
| **Capogruppo**  | Guida carismatica temporanea                               | NPC chiave per missioni di comando o scelte morali         |
| **Scavatori**   | Recupero risorse e tecnologia                               | NPC per missioni di raccolta e crafting                   |
| **Guardiani**   | Difesa del gruppo                                          | NPC con IA combattiva, pattugliamento e difesa accampamento|
| **Scout**       | Esplorazione ambientale                                    | NPC per individuare risorse, minacce e percorsi segreti   |
| **Novizi**      | Giovani apprendisti                                       | Tutorial o side‑quest per il giocatore                     |

- La gerarchia è **fluida e temporanea**, determinata da forza, esperienza o consenso del gruppo.  

---

## 2. Insediamenti e Movimento

- **Accampamenti nomadi**: tende, baracche improvvisate, rifugi tra dune e saline  
- **Rovine adattate**: strutture semi-distrutte trasformate in rifugi sicuri  
- **Mappe di spostamento**:  
  - Percorsi variabili basati su stagioni, tempeste di sabbia, presenza di risorse  
  - In gioco: trigger di spawn e despawn dei gruppi Reietti nelle aree desertiche  

---

## 3. Equipaggiamento e Tecnologie

| Nome              | Descrizione                                      | Uso in-game                                      |
|------------------|-------------------------------------------------|-------------------------------------------------|
| Armature improvvisate | Metallo, tessuti resistenti, scarti tecnologici | Protezione dai nemici e ambiente              |
| Lame e bastoni    | Armi corpo a corpo ricavate da rottami          | Combattimento ravvicinato, stealth            |
| Archi improvvisati | Archi con corde e materiali recuperati          | Attacco a distanza                             |
| Pistole ricaricate | Pistole recuperate e adattate                   | Attacco a distanza                             |
| Sonda rudimentale  | Rilevamento risorse e predatori                 | Mini‑gioco di esplorazione                     |
| Trappole semplici  | Inganni ambientali                              | Difesa accampamenti, eventi dinamici          |

- Alcuni NPC possono **insegnare crafting o potenziamento** di equipaggiamento improvvisato.  

---

## 4. Comportamento e IA

### 4.1 Stati principali

| Stato        | Comportamento                                       |
|--------------|----------------------------------------------------|
| Nomade       | Movimento libero, esplorazione risorse             |
| Difensivo    | Pattuglia, protezione accampamento                 |
| Aggressivo   | Attacco in caso di minaccia diretta               |
| Diplomazia   | Interazioni con il giocatore o altre fazioni       |
| Recupero     | Raccolta risorse e riparazioni equipaggiamento     |

- L’IA è **dinamica**, basata su fattori ambientali, reputazione del giocatore, disponibilità risorse e interazioni precedenti.

### 4.2 Routine quotidiana

1. Risveglio accampamento → Raccolta risorse → Esplorazione → Eventuali conflitti → Ritorno accampamento → Cerimonia di gruppo  

---

## 5. Economia e Commercio

- **Baratto interno**: scambi basati su oggetti rari e risorse recuperate  
- **Commercio con esterni**: interazione con Dunei e mercanti nomadi  
- **Oggetti speciali**: manufatti unici e componenti tecnologici recuperati da rovine  

---

## 6. Missioni e Interazioni

- **Missioni principali**: informazione sul deserto, scorte critiche, salvataggio di NPC  
- **Missioni secondarie**: recupero risorse, addestramento giovani, protezione accampamenti  
- **Eventi casuali**: tempeste di sabbia, scontri tra Reietti o con predatori, ritrovamenti di antichi manufatti  

---

## 7. Mappe e Posizionamento

- **Sistema di spawn dinamico**: gruppi Reietti generati in aree desertiche secondo percorsi migratori  
- **Accampamenti principali**: nodi fissi su mappe di gioco, punti di interazione narrativa  
- **Percorsi di esplorazione**: collegamenti tra accampamenti e rovine, influenzati dalle tempeste e presenza di altre fazioni  

---

## 8. Asset Tecnici Consigliati

- **3D**: modelli di armature improvvisate, tende, accampamenti mobili, oggetti da crafting  
- **Animazioni**: camminata su sabbia, combattimento corpo a corpo, pattugliamento, interazione con il giocatore  
- **Audio**: suoni ambientali desertici, comunicazioni tra NPC, allarmi predatori  

---

## 9. Note di Implementazione

- IA modulare con **Finite State Machine** (FSM) per stati Nomade, Difensivo, Aggressivo, Diplomazia, Recupero  
- **Trigger eventi ambientali** per tempeste di sabbia e incontri casuali  
- Integrazione con **reputazione del giocatore**, modificando aggressività o disponibilità a interazioni  

---

> **Nota**: I Reietti delle Sabbie rappresentano una fazione altamente adattiva e variabile, offrendo al giocatore opportunità di alleanza, scambio o conflitto a seconda delle scelte e del comportamento, rendendo dinamico il deserto dell’Alto Adriatico.

