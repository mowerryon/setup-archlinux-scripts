#!/bin/bash
set -e

echo "Installing Multimedia Codecs and Libraries..."
sudo pacman -S --needed --noconfirm \
    gstreamer \
    gst-libav \
    gst-plugins-base \
    gst-plugins-good \
    gst-plugins-bad \
    gst-plugins-ugly \
    ffmpeg \
    x264 \
    x265 \
    libva

echo "Multimedia packages installed successfully!"
