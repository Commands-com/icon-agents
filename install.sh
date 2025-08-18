#!/bin/bash

# Install script for Icon Agents - Pod-based Architecture
# Allows users to install specific pods or all pods
# Usage: ./install.sh (from repo) or curl ... | bash (remote)
# Interactive script that prompts for installation directory and pod selection

set -e

# GitHub repository details
GITHUB_REPO="Commands-com/icon-agents"
GITHUB_BRANCH="main"
RAW_BASE_URL="https://raw.githubusercontent.com/${GITHUB_REPO}/refs/heads/${GITHUB_BRANCH}"

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

# Function to download file from GitHub
download_file() {
    local source_path="$1"
    local target_path="$2"
    local url="${RAW_BASE_URL}/${source_path}"
    
    if curl -fsSL "$url" -o "$target_path" 2>/dev/null; then
        return 0
    else
        return 1
    fi
}

# Detect if we're running from repo or downloaded via curl
if [ -f "commands/icon-review.md" ]; then
    INSTALL_MODE="local"
    echo -e "${BLUE}📁 Running from local repository${NC}"
else
    INSTALL_MODE="remote"
    echo -e "${BLUE}📁 Running remote installation${NC}"
fi

# Create Claude directories if they don't exist
echo -e "${BLUE}📁 Creating directories...${NC}"
mkdir -p "$CLAUDE_DIR/agents"
mkdir -p "$CLAUDE_DIR/commands"

# Install main command
echo -e "${YELLOW}📦 Installing main command...${NC}"
if [ "$INSTALL_MODE" = "local" ]; then
    if [ -f "commands/icon-review.md" ]; then
        cp "commands/icon-review.md" "$CLAUDE_DIR/commands/icon-review.md"
        echo -e "${GREEN}  ✓ Installed main command: icon-review.md${NC}"
    else
        echo -e "${RED}  ✗ commands/icon-review.md not found${NC}"
    fi
else
    if download_file "commands/icon-review.md" "$CLAUDE_DIR/commands/icon-review.md"; then
        echo -e "${GREEN}  ✓ Downloaded main command: icon-review.md${NC}"
    else
        echo -e "${RED}  ✗ Failed to download main command${NC}"
    fi
fi

# Function to get agent list for a pod from GitHub API
get_pod_agents() {
    local pod="$1"
    # For simplicity, we'll use a predefined list since we know the structure
    # This avoids needing to call GitHub API
    case "$pod" in
        "programming")
            echo "linus-torvalds.md john-carmack.md rich-hickey.md alan-kay.md kent-beck.md barbara-liskov.md leslie-lamport.md donald-knuth.md"
            ;;
        "security")
            echo "dan-kaminsky.md katie-moussouris.md bruce-schneier.md mikko-hypponen.md tarah-wheeler.md mudge-zatko.md eva-galperin.md moxie-marlinspike.md"
            ;;
        "design")
            echo "dieter-rams.md don-norman.md edward-tufte.md jonathan-ive.md susan-kare.md jakob-nielsen.md kat-holmes.md lou-downe.md"
            ;;
        "business")
            echo "clayton-christensen.md michael-porter.md eric-ries.md steve-jobs.md jeff-bezos.md satya-nadella.md reid-hoffman.md elon-musk.md"
            ;;
        "data-ai")
            echo "andrew-ng.md fei-fei-li.md geoffrey-hinton.md hilary-mason.md yann-lecun.md cassie-kozyrkov.md dj-patil.md demis-hassabis.md"
            ;;
        "product-policy")
            echo "marty-cagan.md gene-kim.md joanna-bryson.md michelle-zatlyn.md julie-zhuo.md ben-horowitz.md tristan-harris.md cathy-oneil.md"
            ;;
        "platform-operations")
            echo "tim-berners-lee.md vint-cerf.md radia-perlman.md werner-vogels.md martin-fowler.md brendan-gregg.md kelsey-hightower.md jessie-frazelle.md"
            ;;
        *)
            echo ""
            ;;
    esac
}

# Install selected pods
for pod in "${SELECTED_PODS[@]}"; do
    echo -e "${YELLOW}📦 Installing $pod pod...${NC}"
    
    if [ "$INSTALL_MODE" = "local" ]; then
        # Local installation (from repo)
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
    else
        # Remote installation (download from GitHub)
        agent_files=$(get_pod_agents "$pod")
        agent_count=0
        
        for agent_file in $agent_files; do
            if download_file "agents/$pod/$agent_file" "$CLAUDE_DIR/agents/$agent_file"; then
                agent_count=$((agent_count + 1))
            fi
        done
        
        if [ $agent_count -gt 0 ]; then
            echo -e "${GREEN}  ✓ Downloaded $agent_count agents to $CLAUDE_DIR/agents/${NC}"
        else
            echo -e "${RED}  ✗ Failed to download agents for $pod${NC}"
        fi
        
        # Download pod-specific command
        pod_cmd="icon-$pod-review"
        if download_file "commands/$pod/$pod_cmd.md" "$CLAUDE_DIR/commands/$pod_cmd.md"; then
            echo -e "${GREEN}  ✓ Downloaded pod command: $pod_cmd.md${NC}"
        else
            echo -e "${RED}  ✗ Failed to download commands/$pod/$pod_cmd.md${NC}"
        fi
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
echo "2. Use /icon-review for multi-domain analysis or pod-specific shortcuts:"
echo "   • /icon-programming-review - Code analysis with 8 legendary programmers"
echo "   • /icon-security-review - Security analysis with 8 security experts"
echo "   • /icon-design-review - Design analysis with 8 design masters"
echo "   • And more pod-specific commands for your installed pods"
echo "3. All 56 expert agents are now available as individual Task agents"
echo ""
echo -e "${CYAN}Happy coding with legendary wisdom across all domains! 🚀${NC}"