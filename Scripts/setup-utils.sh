#!/bin/bash
set -e

echo "Installing terminal utilities from official repositories..."
sudo pacman -S --needed --noconfirm \
    tealdeer \
    fzf \
    bat \
    bottom \
    fish \
    starship \
    fastfetch \
    vim \
    yt-dlp \
    ntfs-3g \
    curl \
    wget \
    zip \
    unzip \
    unrar \
    7zip \
    reflector

echo "Installing additional utilities with Paru..."
paru -S --needed --noconfirm gallery-dl

echo "Updating tldr cache..."
tldr --update

echo "Terminal utilities installed successfully!"
