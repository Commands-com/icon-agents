#!/bin/bash

# Install script for Icon Agents - Pod-based Architecture
# Allows users to install specific pods or all pods
# Usage: ./install.sh
# Interactive script that prompts for installation directory and pod selection

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Available pods
AVAILABLE_PODS=("programming" "data-ai" "product-policy" "business" "design" "platform-operations" "security")
PLANNED_PODS=()

echo -e "${CYAN}🏗️  Icon Agents Pod Installer${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Prompt for installation directory
echo -e "${YELLOW}📂 Installation Directory${NC}"
echo "Where would you like to install Icon Agents?"
read -p "Enter directory path (or press Enter for current directory): " TARGET_DIR

# Set default to current directory if empty
if [ -z "$TARGET_DIR" ]; then
    TARGET_DIR="."
fi

# Resolve full path
TARGET_DIR=$(realpath "$TARGET_DIR")
CLAUDE_DIR="$TARGET_DIR/.claude"

echo -e "${BLUE}📍 Installing to: $CLAUDE_DIR${NC}"
echo ""

# Pod selection
echo -e "${YELLOW}🎯 Pod Selection${NC}"
echo "Available pods for installation:"
echo ""

# Show available pods
for i in "${!AVAILABLE_PODS[@]}"; do
    pod="${AVAILABLE_PODS[$i]}"
    case $pod in
        "programming")
            description="8 legendary programmers (Linus, Carmack, Hickey, Knuth, Eich, Beck, Lamport, Liskov)"
            ;;
        "data-ai")
            description="8 AI/ML pioneers (Andrew Ng, Fei-Fei Li, Geoffrey Hinton, Hilary Mason, Yann LeCun, Cassie Kozyrkov, DJ Patil, Demis Hassabis)"
            ;;
        "product-policy")
            description="8 product/policy experts (Marty Cagan, Gene Kim, Joanna Bryson, Michelle Zatlyn, Julie Zhuo, Ben Horowitz, Tristan Harris, Cathy O'Neil)"
            ;;
        "business")
            description="8 strategy/innovation leaders (Christensen, Porter, Ries, Jobs, Bezos, Nadella, Hoffman, Musk)"
            ;;
        "design")
            description="8 design icons (Rams, Norman, Tufte, Ive, Kare, Nielsen, Holmes, Downe)"
            ;;
        "platform-operations")
            description="8 infrastructure experts (Berners-Lee, Cerf, Perlman, Vogels, Fowler, Gregg, Hightower, Frazelle)"
            ;;
        "security")
            description="8 security experts (Kaminsky, Moussouris, Schneier, Hyppönen, Wheeler, Zatko, Galperin, Marlinspike)"
            ;;
        *)
            description="Unknown pod"
            ;;
    esac
    echo -e "${GREEN}  $((i+1)). $pod${NC} - $description"
done

echo ""
echo "Installation options:"
echo "  all         - Install all available pods"
echo "  1-7         - Install specific pod by number"
echo "  1,3,5       - Install multiple pods by numbers (comma-separated)"
echo "  quit        - Exit without installing"
echo ""

read -p "What would you like to install? [all/1-7/1,3,5/quit] (default: all): " SELECTION

case $SELECTION in
    "all"|"ALL"|"")
        SELECTED_PODS=("${AVAILABLE_PODS[@]}")
        echo -e "${GREEN}✓ Installing all available pods${NC}"
        ;;
    "quit"|"QUIT"|"q"|"Q")
        echo -e "${YELLOW}Installation cancelled${NC}"
        exit 0
        ;;
    *)
        # Handle individual numbers or comma-separated list
        SELECTED_PODS=()
        IFS=',' read -ra NUMBERS <<< "$SELECTION"
        for num in "${NUMBERS[@]}"; do
            num=$(echo "$num" | tr -d ' ') # Remove spaces
            if [[ "$num" =~ ^[1-7]$ ]]; then
                pod_index=$((num-1))
                SELECTED_PODS+=("${AVAILABLE_PODS[$pod_index]}")
            else
                echo -e "${RED}✗ Invalid pod number: $num (must be 1-7)${NC}"
                exit 1
            fi
        done
        
        if [ ${#SELECTED_PODS[@]} -eq 0 ]; then
            echo -e "${RED}✗ No valid pods selected${NC}"
            exit 1
        fi
        
        echo -e "${GREEN}✓ Installing selected pods: ${SELECTED_PODS[*]}${NC}"
        ;;
esac

echo ""

# Create Claude directories if they don't exist
echo -e "${BLUE}📁 Creating directories...${NC}"
mkdir -p "$CLAUDE_DIR/agents"
mkdir -p "$CLAUDE_DIR/commands"

# Install main command (root level)
echo -e "${YELLOW}📦 Installing main command...${NC}"
if [ -f "commands/icon-review.md" ]; then
    cp "commands/icon-review.md" "$CLAUDE_DIR/commands/icon-review.md"
    echo -e "${GREEN}  ✓ Installed main command: icon-review.md${NC}"
else
    echo -e "${RED}  ✗ commands/icon-review.md not found${NC}"
fi

# Install selected pods
for pod in "${SELECTED_PODS[@]}"; do
    echo -e "${YELLOW}📦 Installing $pod pod...${NC}"
    
    # Install agents for this pod (flatten to agents/ directory)
    if [ -d "agents/$pod" ]; then
        cp -r agents/$pod/* "$CLAUDE_DIR/agents/"
        agent_count=$(find "agents/$pod" -name "*.md" | wc -l)
        echo -e "${GREEN}  ✓ Installed $agent_count agents to $CLAUDE_DIR/agents/${NC}"
    else
        echo -e "${RED}  ✗ agents/$pod directory not found${NC}"
    fi
    
    # Install pod-specific command
    pod_cmd="icon-$pod-review"
    if [ -f "commands/$pod/$pod_cmd.md" ]; then
        cp "commands/$pod/$pod_cmd.md" "$CLAUDE_DIR/commands/$pod_cmd.md"
        echo -e "${GREEN}  ✓ Installed pod command: $pod_cmd.md${NC}"
    else
        echo -e "${RED}  ✗ commands/$pod/$pod_cmd.md not found${NC}"
    fi
done

# Note: commands.yaml is for Commands.com MCP server, not copied to Claude

echo ""
echo -e "${GREEN}🎉 Installation complete!${NC}"
echo -e "${BLUE}📊 Installation Summary:${NC}"
echo -e "  📂 Installation location: $CLAUDE_DIR"
echo -e "  🤖 Agents: $CLAUDE_DIR/agents/"
echo -e "  ⚡ Commands: $CLAUDE_DIR/commands/"
echo -e "  📄 Config: $CLAUDE_DIR/commands.yaml"
echo ""

# Show installed pods
echo -e "${CYAN}Installed pods:${NC}"
for pod in "${SELECTED_PODS[@]}"; do
    # Count agents that were installed from this pod
    agent_count=$(find "agents/$pod" -name "*.md" 2>/dev/null | wc -l)
    echo -e "  🎯 $pod: $agent_count agents"
done

echo ""
echo -e "${YELLOW}💡 Next steps:${NC}"
echo "1. Restart Claude Code to load the new agents and commands"
echo "2. Use /icon-expert-review or /icon-commit-review to get started"
echo "3. Check the README files for detailed usage instructions"
echo ""
echo -e "${CYAN}Happy coding with legendary wisdom! 🚀${NC}"