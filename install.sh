#!/bin/bash

# Install script for Icon Agents
# Copies agents and commands to Claude directories
# Usage: ./install.sh [target_directory]
# If no directory is specified, uses current directory

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Determine target directory
TARGET_DIR="${1:-.}"
CLAUDE_DIR="$TARGET_DIR/.claude"

echo -e "${BLUE}Installing Icon Agents to: $CLAUDE_DIR${NC}"

# Create Claude directories if they don't exist
echo "Creating directories..."
mkdir -p "$CLAUDE_DIR/agents"
mkdir -p "$CLAUDE_DIR/commands"

# Copy agents
echo "Copying agents..."
if [ -d "agents" ]; then
    cp -r agents/* "$CLAUDE_DIR/agents/"
    echo -e "${GREEN}✓ Agents copied to $CLAUDE_DIR/agents${NC}"
else
    echo -e "${RED}✗ agents/ directory not found${NC}"
    exit 1
fi

# Copy commands
echo "Copying commands..."
if [ -d "commands" ]; then
    for cmd_dir in commands/*/; do
        if [ -d "$cmd_dir" ]; then
            cmd_name=$(basename "$cmd_dir")
            if [ -f "$cmd_dir/command.md" ]; then
                cp "$cmd_dir/command.md" "$CLAUDE_DIR/commands/$cmd_name.md"
                echo -e "${GREEN}✓ Copied $cmd_name.md${NC}"
            else
                echo -e "${RED}✗ No command.md found in $cmd_dir${NC}"
            fi
        fi
    done
    echo -e "${GREEN}✓ Commands copied to $CLAUDE_DIR/commands${NC}"
else
    echo -e "${RED}✗ commands/ directory not found${NC}"
    exit 1
fi

# Copy commands.yaml if it exists
if [ -f "commands.yaml" ]; then
    cp commands.yaml "$CLAUDE_DIR/"
    echo -e "${GREEN}✓ commands.yaml copied to $CLAUDE_DIR/${NC}"
fi

echo -e "${GREEN}Installation complete!${NC}"
echo -e "${BLUE}Agents available in: $CLAUDE_DIR/agents${NC}"
echo -e "${BLUE}Commands available in: $CLAUDE_DIR/commands${NC}"