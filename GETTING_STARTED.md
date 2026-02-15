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
