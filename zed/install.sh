#! /usr/bin/env bash

# Monokai Vibrant Rust - Zed Theme Installer
# This script installs the theme to your Zed configuration directory

set -e


RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'


print_color() {
    printf "${1}${2}${NC}\n"
}

print_color $BLUE " Monokai Vibrant Rust - Zed Theme Installer"
print_color $BLUE "=============================================="

# Detect OS and set config directory
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    ZED_CONFIG_DIR="$HOME/.config/zed"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    ZED_CONFIG_DIR="$HOME/Library/Application Support/Zed"
else
    print_color $RED " Unsupported operating system: $OSTYPE"
    exit 1
fi


if [ ! -d "$ZED_CONFIG_DIR" ]; then
    print_color $RED " Zed configuration directory not found!"
    print_color $YELLOW "   Please make sure Zed is installed and has been run at least once."
    exit 1
fi


THEMES_DIR="$ZED_CONFIG_DIR/themes"
if [ ! -d "$THEMES_DIR" ]; then

    mkdir -p "$THEMES_DIR"
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_FILE="$SCRIPT_DIR/themes/monokai-vibrant-rust.json"


if [ ! -f "$THEME_FILE" ]; then
    print_color $RED " Theme file not found: $THEME_FILE"
    print_color $YELLOW "   Please make sure you're running this script from the correct directory."
    exit 1
fi


print_color $YELLOW "Installing theme..."
cp "$THEME_FILE" "$THEMES_DIR/"

if [ $? -eq 0 ]; then
    print_color $GREEN "Installation complete!"
    print_color $BLUE ""
    print_color $BLUE "To activate the theme:"
    print_color $BLUE "1. Restart Zed"
    print_color $BLUE "2. Go to Zed → Settings → Select Theme"
    print_color $BLUE "3. Choose 'Monokai Vibrant Rust' or 'Monokai Vibrant Rust Light'"
    print_color $BLUE ""
    print_color $BLUE "Theme location: $THEMES_DIR/monokai-vibrant-rust.json"
else
    print_color $RED "Failed to install theme"
    exit 1
fi
