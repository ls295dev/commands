#!/usr/bin/env bash
chezmoi re-add
chezmoi cd
git add .
git commit -m "$(date +%Y%m%d%H%M%S)"
git push
exit
