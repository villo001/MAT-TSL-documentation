# Board di Progetto - Mediterranean Atomic Tales (MAT:TSL)

Questo documento descrive la struttura della **Project Board** e come usarla per gestire task, issue e PR nel progetto.

---

## Colonne della Board

### 1. Backlog
- Contiene tutte le idee, note o task ancora **grezzi**.
- Non ancora analizzati o dettagliati.
- Azioni:
  - Creare un’**issue** per ogni nuovo task/documento.
  - Non assegnare ancora a milestone o persone.

### 2. Ready
- Task pronti per essere **iniziati**.
- Sono stati dettagliati, descritti e pianificati.
- Azioni:
  - Assegnare responsabile.
  - Collegare a milestone.
  - Creare branch dedicato se necessario.

### 3. In Progress
- Task o documenti attualmente **in lavorazione**.
- Branch aperto e lavoro attivo.
- Azioni:
  - Aggiornare regolarmente con commit.
  - Aggiornare la colonna se cambia lo stato del lavoro.

### 4. In Review
- Task o PR **completati** e pronti per revisione.
- Azioni:
  - Collegare PR all’issue.
  - Indicare eventuali commenti per i reviewer.
  - Non effettuare merge fino a completamento della revisione.

### 5. Done
- Task completati, PR mergeate, documentazione aggiornata.
- Azioni:
  - Spostare issue o PR qui solo dopo approvazione.
  - Aggiornare `complete_index.md` se necessario.

---

## Flusso Raccomandato

1. Creare un’**issue** nel backlog.
2. Spostare l’issue in **Ready** quando dettagliata.
3. Creare un branch per l’issue (`tipo/#ID-descrizione`).
4. Lavorare sul branch e aprire **PR**.
5. Spostare l’issue in **In Progress** durante la stesura.
6. Quando pronto, spostare in **In Review** per revisione.
7. Dopo approvazione e merge, spostare in **Done**.
8. Aggiornare gli index e i link se necessario.

---

## Convenzioni

- **Tipi di branch**:
  - `doc/#ID-descrizione` → per documentazione
  - `feature/#ID-descrizione` → per nuove funzionalità
  - `fix/#ID-descrizione` → per correzioni
- **Milestone**:
  - Collegare ogni task a milestone di rilascio (0.0.1, 0.1.0, 1.0.0)
- **Checklist PR**:
  - Front matter corretto nei Markdown
  - Link relativi verificati
  - Revisione completata

---

## Riferimenti

- [GitHub Projects](https://docs.github.com/en/issues/organizing-your-work-with-project-boards)
- [Issue Templates](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issue-templates)
- [Pull Request Templates](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests)

