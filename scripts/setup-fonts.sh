#!/bin/bash
set -e

echo "Installing fonts from official repositories..."
sudo pacman -S --needed --noconfirm \
    ttf-ubuntu-font-family \
    ttf-jetbrains-mono-nerd \
    ttf-liberation \
    ttf-dejavu \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji

echo "Installing Microsoft fonts from AUR..."
paru -S --noconfirm ttf-ms-fonts

echo "Regenerating font cache..."
fc-cache -fv

echo "Fonts installed successfully!"
