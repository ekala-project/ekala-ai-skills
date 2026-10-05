# Ekala AI Skills

Centralized AI skills for [ekapkgs](https://github.com/ekala-project/ekapkgs)
and the broader Ekala ecosystem. Consumed as a Claude Code plugin.

## Writing Packages

Read the guide matching the package's build system or language.

| Task | Guide |
|------|-------|
| Nix expression basics (mkDerivation, finalAttrs, meta, deps, fetchers, patches, outputs, passthru) | [packaging](skills/packaging/SKILL.md) |
| Python (buildPythonPackage, pyproject, build-system, testPaths, disabledTests, pythonImportsCheck) | [python](skills/python/SKILL.md) |
| Rust (buildRustPackage, cargoHash, cargoBuildFlags, checkFlags) | [rust](skills/rust/SKILL.md) |
| Go (buildGoModule, vendorHash, ldflags, subPackages) | [go](skills/go/SKILL.md) |
| CMake project (cmake.configurePhaseHook, cmakeEntries) | [cmake](skills/cmake/SKILL.md) |
| CMake+Nix troubleshooting (attributes, flags, cross-compilation) | [ekala-cmake-nix](skills/ekala-cmake-nix/SKILL.md) |
| Meson project (meson.configurePhaseHook, mesonEntries, mesonFeatures) | [meson](skills/meson/SKILL.md) |
| Multi-version package (mkManyVariants, variants.nix) | [mk-many-variants](skills/mk-many-variants/SKILL.md) |
| Porting from nixpkgs (copy, strip maintainers/updateScript, TODO missing deps) | [porting](skills/porting/SKILL.md) |
| Bash phases under structured attrs (array iteration, env attrset, substituteAll) | [structured-attrs](skills/structured-attrs/SKILL.md) |

## Fixing Build Failures

| Symptom | Guide |
|---------|-------|
| Eval or build error — validation workflow, nix-instantiate, nix-build, nix fmt | [validation](skills/validation/SKILL.md) |
| General Nix build failures and troubleshooting | [nix-build](skills/nix-build/SKILL.md) |
| Nix evaluation, inspecting expressions | [nix-eval](skills/nix-eval/SKILL.md) |

## Repository Layout

```
skills/
  <skill-name>/
    SKILL.md          # Skill definition (frontmatter + prompt)
scripts/              # CI validation scripts
```

## Adding a Skill

1. Create `skills/<skill-name>/SKILL.md` with YAML frontmatter (`name`,
   `description`) followed by the skill prompt.
2. Follow the naming and structure conventions enforced by `scripts/`.
3. Update `README.md` with a short entry for the new skill.

Skills should target concrete Ekala/Nix workflows: building, evaluation,
packaging patterns, toolchain integration, etc. Keep each skill focused on a
single responsibility.
