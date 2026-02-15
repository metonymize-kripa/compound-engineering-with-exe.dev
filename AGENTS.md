# Compound Engineering: Agent Definitions

## Workflow Commands

### /workflows:plan
**Goal:** Transform high-level ideas into a technical execution roadmap.
**Output:** Update `TODO.md` with a prioritized list of atomic tasks.
**Instructions:** Break down the feature into architectural components, state changes, and edge cases.

### /workflows:work
**Goal:** Execute the current top task in `TODO.md`.
**Instructions:** Focus on one task at a time. Use worktrees or temporary branches if complex. Ensure tests are written alongside code.

### /workflows:review
**Goal:** Perform a multi-perspective code audit.
**Instructions:** Check for:
1. Logic errors and edge cases.
2. Alignment with existing patterns in `docs/skills/`.
3. Readability and documentation.

### /workflows:compound
**Goal:** Extract "Residual Value" from the completed task.
**Instructions:**
1. What was harder than expected? Document the solution in a new `docs/skills/SKILL_NAME.md`.
2. Update `AGENTS.md` if a new persona or rule is discovered.
3. Mark task as complete in `TODO.md`.
