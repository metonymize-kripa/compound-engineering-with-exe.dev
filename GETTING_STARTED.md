# Getting Started

## Mental model
- The **playbook** (this repo) is a shared template.
- Each **project** gets its own copy of the files and skills.
- Learnings are written into the project’s `docs/skills/`.
- You **promote** the best skills back into the playbook manually.

## Setup (per VM)

```bash
git clone git@github.com:metonymize-kripa/compound-engineering-with-exe.dev.git ~/compound-engineering
```

## Setup (per project)

```bash
cd /path/to/project
~/compound-engineering/install.sh
```

This copies:
- `AGENTS.md`
- `CLAUDE.md`
- `TODO.md`
- `docs/`

## Run commands with Shelley

```bash
~/compound-engineering/ce /workflows:plan
~/compound-engineering/ce /workflows:review
```

## Promote skills to the playbook

```bash
~/compound-engineering/ce diff-skills /path/to/project
~/compound-engineering/ce promote-skill /path/to/project docs/skills/my-skill.md
```

## References
- https://github.com/EveryInc/compound-engineering-plugin
- https://every.to/guides/compound-engineering
