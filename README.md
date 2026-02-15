# Compound Engineering for exe.dev

This repo provides a local Compound Engineering setup that mirrors the upstream plugin as closely as possible, but works with Shelley.

## What you get

- **Commands**: `/workflows:*` and other compound commands under `commands/`
- **Agents**: Local copies under `agents/`
- **Skills**: Local skills under `docs/skills/`
- **Runner**: `ce` script to expand commands into Shelley-ready prompts

## Quick start

```bash
git clone git@github.com:metonymize-kripa/compound-engineering-with-exe.dev.git ~/compound-engineering
cd /path/to/project
~/compound-engineering/install.sh
```

## Running commands with Shelley

```bash
~/compound-engineering/ce /workflows:plan
~/compound-engineering/ce /workflows:review
```

The runner outputs a composite prompt that includes the command plus configured review agents (batch mode) so it feels similar to Claude’s parallel agent reviews.

## Configure review agents

Create or edit `compound-engineering.local.md` in your project root:

```yaml
---
review_agents:
  - security-sentinel
  - performance-oracle
  - architecture-strategist
  - code-simplicity-reviewer
---

Add optional review context below this line.
```

## Upstream references

- Compound Engineering plugin: https://github.com/EveryInc/compound-engineering-plugin
- Guide: https://every.to/guides/compound-engineering
