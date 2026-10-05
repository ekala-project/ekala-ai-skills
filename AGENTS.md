# Ekala AI Skills

This repository is the centralized collection of AI skills for
[ekapkgs](https://github.com/ekala-project/ekapkgs) and the broader Ekala
ecosystem. Skills defined here are consumed as a Claude Code plugin and should
cover any workflow where AI assistance benefits Nix-based development.

## Repository layout

```
skills/
  <skill-name>/
    SKILL.md          # Skill definition (frontmatter + prompt)
scripts/              # CI validation scripts
```

## Adding a skill

1. Create `skills/<skill-name>/SKILL.md` with YAML frontmatter (`name`,
   `description`) followed by the skill prompt.
2. Follow the naming and structure conventions enforced by `scripts/`.
3. Update `README.md` with a short entry for the new skill.

## Scope

Skills should target concrete Ekala/Nix workflows: building, evaluation,
packaging patterns, toolchain integration, etc. Keep each skill focused on a
single responsibility.
