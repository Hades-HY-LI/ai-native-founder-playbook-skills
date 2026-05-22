#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Install AI-Native Founder Playbook skills.

Usage:
  ./install.sh codex
  ./install.sh claude
  ./install.sh gemini
  ./install.sh all

Targets:
  codex   Copy skills into ${CODEX_HOME:-$HOME/.codex}/skills
  claude  Copy skills into $HOME/.claude/skills
  gemini  Copy Gemini CLI commands into $HOME/.gemini/commands/founder-playbook
  all     Install all supported targets
EOF
}

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${1:-}"

if [[ -z "$target" || "$target" == "-h" || "$target" == "--help" ]]; then
  usage
  exit 0
fi

install_codex() {
  local dest="${CODEX_HOME:-$HOME/.codex}/skills"
  mkdir -p "$dest"
  cp -R "$repo_root"/skills/* "$dest"/
  echo "Installed Codex skills to $dest"
}

install_claude() {
  local dest="$HOME/.claude/skills"
  mkdir -p "$dest"
  cp -R "$repo_root"/skills/* "$dest"/
  echo "Installed Claude Code skills to $dest"
}

install_gemini() {
  local dest="$HOME/.gemini/commands/founder-playbook"
  mkdir -p "$dest"
  cp "$repo_root"/.gemini/commands/founder-playbook/*.toml "$dest"/
  echo "Installed Gemini CLI commands to $dest"
  echo "Note: Gemini commands reference this repo's skills/ directory. Run Gemini from this repo root, or keep a copy of skills/ in the project where Gemini runs."
}

case "$target" in
  codex)
    install_codex
    ;;
  claude)
    install_claude
    ;;
  gemini)
    install_gemini
    ;;
  all)
    install_codex
    install_claude
    install_gemini
    ;;
  *)
    echo "Unknown target: $target" >&2
    usage >&2
    exit 1
    ;;
esac
