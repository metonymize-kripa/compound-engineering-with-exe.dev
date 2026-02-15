# Skill: exe.dev Persistence
- **Context:** Ensuring state survives VM reboots.
- **Pattern:** Shelley reads from `~/.config/shelley/` and the local git root.
- **Action:** Keep all workflow state in `AGENTS.md` and `TODO.md` within the project folder.
