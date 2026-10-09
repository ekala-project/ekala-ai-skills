# This repository's agent-distro profile: agent-distro reads it when a harness
# starts here, or anywhere with `agent-distro github:ekala-project/ekala-ai-skills`.
{
  name = "ekala";
  description = "Ekala's Nix development skills";
  plugins = [ ./. ];
}
