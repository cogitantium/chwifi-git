#!/bin/bash

# Run make-pkg twice
printf "Compiling package from source twice to set correct reference and hash of latest master commit\n"
makepkg -sf
makepkg -sf

# Update .SRCINFO
printf "Creating .SRCINFO now\n"
makepkg --printsrcinfo > .SRCINFO

printf "\n#####\nFinished distribution-preparation\n#####\n\n"

# Add and show git-diff
git add -u
git status
git diff --staged 
