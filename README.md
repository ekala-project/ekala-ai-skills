# Ekala Skills

Nix development skills for coding agents: Claude Code, Codex, Oh My Pi, and
anything else that loads [Agent Plugins](https://agent-plugins.org) packages.

## Skills

### nix-build

The `nix-build` skill assists with building Nix packages using nix-build and related Nix commands.

### nix-eval

The `nix-eval` skill assists with exploring nix evaluation and inspecting nix expressions.

### ekala-cmake-nix

The `ekala-cmake-nix` skill assists with building CMake-based Nix packages, understanding cmake-specific Nix attributes, and troubleshooting CMake builds in Nix. It provides comprehensive documentation of all Nix attributes that influence CMake builds (from the cmake setup-hook) and includes examples and best practices.

## Installation

Clone the repository, then load it in your agent:

```bash
# Oh My Pi
omp -e /path/to/ekala-claude-skills

# Claude Code
claude --plugin-dir /path/to/ekala-claude-skills

# Codex
codex plugin marketplace add /path/to/ekala-claude-skills
codex plugin add ekala@ekala
```

Any other consumer of the Agent Plugins format can point at the repository
root. Skills are namespaced `ekala:<skill>`.

### With agent-distro

`agent-distro.nix` makes this repository an
[agent-distro](https://agent-distro.nixos.asia) profile, so any of the agents
above starts with these skills loaded, nothing installed:

```bash
nix run github:juspay/agent-distro -- github:ekala-project/ekala-ai-skills
```

A terminal opened inside this repository uses the profile on its own.

CI checks the profile's `packages` against the binary cache on x86_64 Linux.

For a single project in Claude Code, copy the skills into the project instead:

```bash
cp -r skills /path/to/your/project/.claude/
```

## Plugin Structure

```text
ekala-claude-skills/
├── plugin.json                       # Agent Plugins manifest
├── .agents/plugins/marketplace.json  # Codex marketplace catalog
├── .claude-plugin/plugin.json        # Claude Code manifest
├── skills/
│   └── nix-build/
│       └── SKILL.md                  # One skill
└── README.md                         # This file
```

## Contributing

To add new skills to this plugin:

1. Create a new directory under `skills/` with your skill name
2. Add a `SKILL.md` file with the skill definition (see existing skills for examples)
3. Update this README with information about the new skill
4. Bump the version in `.claude-plugin/plugin.json`

## License

MIT

## Author

Jonathan Ringer and Ekala contributors
