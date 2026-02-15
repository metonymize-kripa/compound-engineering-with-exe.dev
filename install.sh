#!/usr/bin/env bash
set -euo pipefail

REPO_URL="git@github.com:metonymize-kripa/compound-engineering-with-exe.dev.git"
CE_DIR="$HOME/compound-engineering"
PROJECT_DIR="$(pwd)"
FORCE=0

usage() {
  cat <<EOF
Usage: $(basename "$0") [options] [project_dir]

Options:
  -c, --ce-dir DIR   Path to compound-engineering repo (default: ~/compound-engineering)
  -f, --force        Overwrite existing files/symlinks
  -h, --help         Show help

Examples:
  $(basename "$0")
  $(basename "$0") /path/to/project
  $(basename "$0") -c /opt/compound-engineering -f /path/to/project
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -c|--ce-dir)
      CE_DIR="$2"
      shift 2
      ;;
    -f|--force)
      FORCE=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      PROJECT_DIR="$1"
      shift
      ;;
  esac
done

if [[ ! -d "$CE_DIR/.git" ]]; then
  mkdir -p "$(dirname "$CE_DIR")"
  git clone "$REPO_URL" "$CE_DIR"
else
  git -C "$CE_DIR" pull --ff-only
fi

link_item() {
  local src="$1"
  local dest="$2"

  if [[ -e "$dest" || -L "$dest" ]]; then
    if [[ $FORCE -eq 1 ]]; then
      rm -rf "$dest"
    else
      echo "Skip: $dest exists (use --force to overwrite)" >&2
      return 0
    fi
  fi

  ln -s "$src" "$dest"
}

mkdir -p "$PROJECT_DIR"

link_item "$CE_DIR/AGENTS.md" "$PROJECT_DIR/AGENTS.md"
link_item "$CE_DIR/CLAUDE.md" "$PROJECT_DIR/CLAUDE.md"
link_item "$CE_DIR/TODO.md" "$PROJECT_DIR/TODO.md"
link_item "$CE_DIR/docs" "$PROJECT_DIR/docs"

echo "✅ Compound Engineering linked into $PROJECT_DIR"
