# Compound Engineering (Local)

This repo is a **local Compound Engineering playbook** for Shelley.

## Mental model (short)
- **Playbook** (this repo): defaults you can reuse across projects.
- **Project**: gets its **own copy** of files (`AGENTS.md`, `CLAUDE.md`, `TODO.md`, `docs/`).
- **Learnings** live in the project. You **promote** the best ones to the playbook manually.

## Quick start

```bash
git clone git@github.com:metonymize-kripa/compound-engineering-with-exe.dev.git ~/compound-engineering
cd /path/to/project
~/compound-engineering/install.sh
```

## Run commands with Shelley

```bash
~/compound-engineering/ce /workflows:plan
~/compound-engineering/ce /workflows:review
```

## Promote learnings to global playbook

```bash
# diff local vs global skills
~/compound-engineering/ce diff-skills /path/to/project

# copy a project skill into the global playbook
~/compound-engineering/ce promote-skill /path/to/project docs/skills/my-skill.md
```

## Upstream references
- https://github.com/EveryInc/compound-engineering-plugin
- https://every.to/guides/compound-engineering
