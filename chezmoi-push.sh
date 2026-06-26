#!/usr/bin/bash
chezmoi re-add
chezmoi git add .
chezmoi git -- commit -m "$(date +%Y%m%d%H%M%S)"
chezmoi git push
