# Getting Started with Compound Engineering

Compound Engineering is a lightweight workflow for long-running projects. It makes work durable by combining agent behaviors, atomic tasks, and a living skill map.

## Quick Start (per VM)

1. **Clone the repo** (once per VM):
   ```bash
   git clone git@github.com:metonymize-kripa/compound-engineering-with-exe.dev.git ~/compound-engineering
   ```

2. **Link into a project** (run inside your project directory):
   ```bash
   ~/compound-engineering/install.sh
   ```
   This creates symlinks for:
   - `AGENTS.md`
   - `CLAUDE.md`
   - `TODO.md`
   - `docs/`

3. **Start working**:
   - Use `/workflows:plan` to expand a feature into atomic tasks in `TODO.md`.
   - Use `/workflows:work` to execute the top task.
   - Use `/workflows:review` for a multi-perspective audit.
   - Use `/workflows:compound` to capture residual value into `docs/skills/`.

4. **Use local agents** (offline-friendly):
   - Local copies live in `agents/`.
   - See `AGENTS_INDEX.md` for a quick list.

## Conventions

- **Atomic commits**: small, verifiable changes.
- **Skill map**: every hard-earned insight goes into `docs/skills/`.
- **Persistence first**: assume multi-session work; make the next session easier.

## Troubleshooting

- Existing files? Re-run with `--force`:
  ```bash
  ~/compound-engineering/install.sh --force
  ```
- Custom location? Use `--ce-dir`:
  ```bash
  ~/compound-engineering/install.sh --ce-dir /opt/compound-engineering
  ```

## More from Every

- **Compound Engineering Plugin (source):**
  https://github.com/EveryInc/compound-engineering-plugin
- **Compound Engineering Guide:**
  https://every.to/guides/compound-engineering

---

If you want a one-liner bootstrap or a template repo for new projects, open an issue and we’ll add it.

## Local Command Runner (Shelley)

Use the `ce` script to expand Compound Engineering commands into a Shelley-ready prompt.

```bash
# From any project directory with compound-engineering linked
~/compound-engineering/ce /workflows:plan

# Multi-agent review (batch mode)
~/compound-engineering/ce /workflows:review

# Sequential agent prompts (if desired)
~/compound-engineering/ce --mode sequential /workflows:review
```

This reads `compound-engineering.local.md` in your project to choose review agents. If missing, a default file is created.

## Mental Model

Think of Compound Engineering as **a shared playbook + per‑project journals**.

### 1) The playbook (this repo)
- Contains reusable **commands**, **agents**, and **skills**.
- Lives at `~/compound-engineering` on each VM.
- You update this repo when you improve the playbook.

### 2) Per‑project state (your code repo)
When you run `install.sh` inside a project, it **symlinks** these files into the project:
- `AGENTS.md` — workflow/agent rules for this project
- `CLAUDE.md` — behavioral rules
- `TODO.md` — the task queue for the project
- `docs/` — skill notes and artifacts (your “journal”)

These symlinks mean the files live in the playbook repo, not duplicated in the project. You **can** commit them in your project if you want, but by default they point back to the playbook.

### 3) How learnings are stored
- During `/workflows:compound`, you write a new `docs/skills/*.md` file.
- Because `docs/` is symlinked, those learnings are written **back into the playbook**.
- That means improvements become reusable across projects and VMs once you push/pull this repo.

### 4) Avoiding cross‑project conflicts
- If you want **project‑specific** learnings, remove the symlink and keep a local `docs/` in the project.
- If you want **global** learnings, keep the symlink and commit changes in the playbook repo.

### 5) Workflow in practice
1. Clone playbook repo to VM
2. Run `install.sh` inside project (creates symlinks)
3. Use `ce` to run commands and generate prompts
4. Commit playbook updates **in the playbook repo** (not the project) if you want them shared
