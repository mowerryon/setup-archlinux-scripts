#!/bin/bash
set -e

# 1. Install dependencies
sudo pacman -S --needed --noconfirm base-devel git

# 2. Move to /tmp and clone paru-bin
cd /tmp
rm -rf paru-bin
git clone https://aur.archlinux.org/paru-bin.git

# 3. Build and Install
cd paru-bin
makepkg -si --noconfirm

# 4. Configure Paru (Enable BottomUp and CleanAfter)
# We use sudo because /etc/paru.conf is owned by root
sudo sed -i 's/^#BottomUp/BottomUp/' /etc/paru.conf
sudo sed -i 's/^#CleanAfter/CleanAfter/' /etc/paru.conf

# 5. Success message
echo "Paru installed and configured successfully!"
