#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Define directories
BUILD_DIR="/home/pedro/ISO-Build/ptomarchy-build"
OUTPUT_DIR="/home/pedro/ISO-Build/ptomarchy-out"
ARCHISO_PROFILE_DIR="/home/pedro/Documents/Programing/ArchISOs/PTOmarchy/ptomarchy-iso/archiso"
OMARCHY_BASE_DIR="/home/pedro/Documents/Programing/ArchISOs/PTOmarchy/omarchy"
PTOMARCHY_CUSTOM_DIR="/home/pedro/Documents/Programing/ArchISOs/PTOmarchy/ptomarchy"

# Clean previous build artifacts
echo "Cleaning previous build artifacts..."
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"
mkdir -p "$OUTPUT_DIR"

# Step 1: Copy omarchy base to the build directory
echo "Copying omarchy base to build directory..."
cp -r "$OMARCHY_BASE_DIR"/* "$BUILD_DIR"/

# Step 2: Overlay ptomarchy customizations
echo "Overlaying ptomarchy customizations..."
rsync -av "$PTOMARCHY_CUSTOM_DIR"/ "$BUILD_DIR"/

# Step 3: Prepare the archiso profile
echo "Preparing archiso profile..."
# In a real scenario, you might copy specific files from BUILD_DIR to ARCHISO_PROFILE_DIR/airootfs/
# For now, we'll just ensure the airootfs directory exists within the archiso profile
mkdir -p "$ARCHISO_PROFILE_DIR"/airootfs

# Step 4: Build the ISO
echo "Building the ISO..."
# This command needs to be run from the directory containing the profiledef.sh
# For now, we'll use a placeholder. The actual command would be something like:
# mkarchiso -v -o "$OUTPUT_DIR" "$ARCHISO_PROFILE_DIR"
echo "Placeholder for mkarchiso command. Please run 'mkarchiso -v -o "$OUTPUT_DIR" "$ARCHISO_PROFILE_DIR"' manually after reviewing the setup."

echo "ISO build process initiated (placeholder)."
echo "Merged files are in: $BUILD_DIR"
echo "Output directory for ISO: $OUTPUT_DIR"
