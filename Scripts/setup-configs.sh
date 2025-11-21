#!/bin/bash

# Create destination just in case
mkdir -p ~/.config

# Copy recursively (-r), interactively (-i) and verbose (-v)
cp -riv ./config/* ~/.config/

echo "Copied new configs over to your home ~/.config directory."
