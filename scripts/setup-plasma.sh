#!/bin/bash
set -e

echo "Installing Plasma Desktop (Minimal)..."
sudo pacman -S --needed --noconfirm \
    plasma-desktop \
    plasma-nm \
    plasma-pa \
    plasma-firewall \
    plasma-browser-integration \
    polkit-kde-agent \
    systemsettings \
    kscreen \
    kde-gtk-config \
    powerdevil \
    sddm \
    sddm-kcm \
    kmenuedit

echo "Installing KDE Applications..."
sudo pacman -S --needed --noconfirm \
    gwenview \
    dolphin \
    okular \
    spectacle \
    kate \
    ark \
    elisa \
    kdeconnect \
    kdialog \
    konsole \
    partitionmanager

echo "Enabling SDDM service..."
sudo systemctl enable sddm

echo "Plasma and KDE Apps installed successfully!"
