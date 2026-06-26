#!/usr/bin/env bash
chezmoi re-add
cd "~/.local/share/chezmoi"
git add .
git commit -m "$(date +%Y%m%d%H%M%S)"
git push
exit
