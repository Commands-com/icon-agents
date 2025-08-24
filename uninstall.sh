#!/bin/bash

# Uninstall script for Icon Agents
# Removes all Icon Agents components from Claude Code project directory

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}🗑️  Icon Agents Uninstaller${NC}"
echo -e "${BLUE}=================================${NC}"
echo ""

# Prompt for uninstall directory
echo -e "${YELLOW}📂 Uninstall Directory${NC}"
echo "From which Claude Code project directory would you like to remove Icon Agents?"
read -p "Enter directory path (or press Enter for current directory): " TARGET_DIR

# Set default to current directory if empty
if [ -z "$TARGET_DIR" ]; then
    TARGET_DIR="."
fi

# Resolve full path
TARGET_DIR=$(realpath "$TARGET_DIR")
CLAUDE_DIR="$TARGET_DIR/.claude"

echo -e "${BLUE}📍 Checking directory: $CLAUDE_DIR${NC}"

# Check if .claude directory exists
if [ ! -d "$CLAUDE_DIR" ]; then
    echo -e "${RED}✗ No .claude directory found at $CLAUDE_DIR${NC}"
    echo "Icon Agents may not be installed in this directory."
    exit 1
fi

# Check for Icon Agents components
AGENTS_COUNT=0
COMMANDS_COUNT=0

# Count Icon Agents components
if [ -d "$CLAUDE_DIR/agents" ]; then
    # Count specific agent files that are part of Icon Agents
    AGENTS_COUNT=$(find "$CLAUDE_DIR/agents" -name "*.md" \( \
        -name "linus-torvalds.md" -o \
        -name "john-carmack.md" -o \
        -name "rich-hickey.md" -o \
        -name "alan-kay.md" -o \
        -name "kent-beck.md" -o \
        -name "barbara-liskov.md" -o \
        -name "leslie-lamport.md" -o \
        -name "donald-knuth.md" -o \
        -name "brendan-eich.md" -o \
        -name "dan-kaminsky.md" -o \
        -name "katie-moussouris.md" -o \
        -name "bruce-schneier.md" -o \
        -name "mikko-hypponen.md" -o \
        -name "tarah-wheeler.md" -o \
        -name "mudge-zatko.md" -o \
        -name "eva-galperin.md" -o \
        -name "moxie-marlinspike.md" -o \
        -name "dieter-rams.md" -o \
        -name "don-norman.md" -o \
        -name "edward-tufte.md" -o \
        -name "jonathan-ive.md" -o \
        -name "susan-kare.md" -o \
        -name "jakob-nielsen.md" -o \
        -name "kat-holmes.md" -o \
        -name "lou-downe.md" -o \
        -name "clayton-christensen.md" -o \
        -name "michael-porter.md" -o \
        -name "eric-ries.md" -o \
        -name "steve-jobs.md" -o \
        -name "jeff-bezos.md" -o \
        -name "satya-nadella.md" -o \
        -name "reid-hoffman.md" -o \
        -name "elon-musk.md" -o \
        -name "andrew-ng.md" -o \
        -name "fei-fei-li.md" -o \
        -name "geoffrey-hinton.md" -o \
        -name "hilary-mason.md" -o \
        -name "yann-lecun.md" -o \
        -name "cassie-kozyrkov.md" -o \
        -name "dj-patil.md" -o \
        -name "demis-hassabis.md" -o \
        -name "marty-cagan.md" -o \
        -name "gene-kim.md" -o \
        -name "joanna-bryson.md" -o \
        -name "michelle-zatlyn.md" -o \
        -name "julie-zhuo.md" -o \
        -name "ben-horowitz.md" -o \
        -name "tristan-harris.md" -o \
        -name "cathy-oneil.md" -o \
        -name "tim-berners-lee.md" -o \
        -name "vint-cerf.md" -o \
        -name "radia-perlman.md" -o \
        -name "werner-vogels.md" -o \
        -name "martin-fowler.md" -o \
        -name "brendan-gregg.md" -o \
        -name "kelsey-hightower.md" -o \
        -name "jessie-frazelle.md" -o \
        -name "atul-gawande.md" -o \
        -name "eric-topol.md" -o \
        -name "regina-barzilay.md" -o \
        -name "daphne-koller.md" -o \
        -name "bob-wachter.md" -o \
        -name "fei-fei-li-healthcare.md" -o \
        -name "andrew-ng-healthcare.md" -o \
        -name "vinod-khosla.md" \
        \) 2>/dev/null | wc -l)
fi

if [ -d "$CLAUDE_DIR/commands" ]; then
    # Count Icon Agents commands
    COMMANDS_COUNT=$(find "$CLAUDE_DIR/commands" -name "icon-*.md" 2>/dev/null | wc -l)
fi

echo ""
echo -e "${BLUE}📊 Found Icon Agents components:${NC}"
echo -e "  🤖 Expert agents: $AGENTS_COUNT"
echo -e "  ⚡ Commands: $COMMANDS_COUNT"

if [ "$AGENTS_COUNT" -eq 0 ] && [ "$COMMANDS_COUNT" -eq 0 ]; then
    echo -e "${YELLOW}ℹ️  No Icon Agents components found in this directory.${NC}"
    echo "Nothing to uninstall."
    exit 0
fi

echo ""
echo -e "${YELLOW}⚠️  This will remove all Icon Agents components:${NC}"

# List what will be removed
if [ "$AGENTS_COUNT" -gt 0 ]; then
    echo -e "${RED}  • $AGENTS_COUNT expert agent files from $CLAUDE_DIR/agents/${NC}"
fi

if [ "$COMMANDS_COUNT" -gt 0 ]; then
    echo -e "${RED}  • $COMMANDS_COUNT command files from $CLAUDE_DIR/commands/${NC}"
fi

echo ""
read -p "Are you sure you want to proceed? [y/N]: " CONFIRM

case $CONFIRM in
    [yY]|[yY][eE][sS])
        echo -e "${BLUE}🗑️  Removing Icon Agents components...${NC}"
        ;;
    *)
        echo -e "${YELLOW}Uninstall cancelled${NC}"
        exit 0
        ;;
esac

# Remove Icon Agents components
REMOVED_AGENTS=0
REMOVED_COMMANDS=0

# Remove expert agents
if [ -d "$CLAUDE_DIR/agents" ]; then
    # List of all Icon Agents expert files
    AGENT_FILES=(
        "linus-torvalds.md" "john-carmack.md" "rich-hickey.md" "alan-kay.md" 
        "kent-beck.md" "barbara-liskov.md" "leslie-lamport.md" "donald-knuth.md" "brendan-eich.md"
        "dan-kaminsky.md" "katie-moussouris.md" "bruce-schneier.md" "mikko-hypponen.md"
        "tarah-wheeler.md" "mudge-zatko.md" "eva-galperin.md" "moxie-marlinspike.md"
        "dieter-rams.md" "don-norman.md" "edward-tufte.md" "jonathan-ive.md"
        "susan-kare.md" "jakob-nielsen.md" "kat-holmes.md" "lou-downe.md"
        "clayton-christensen.md" "michael-porter.md" "eric-ries.md" "steve-jobs.md"
        "jeff-bezos.md" "satya-nadella.md" "reid-hoffman.md" "elon-musk.md"
        "andrew-ng.md" "fei-fei-li.md" "geoffrey-hinton.md" "hilary-mason.md"
        "yann-lecun.md" "cassie-kozyrkov.md" "dj-patil.md" "demis-hassabis.md"
        "marty-cagan.md" "gene-kim.md" "joanna-bryson.md" "michelle-zatlyn.md"
        "julie-zhuo.md" "ben-horowitz.md" "tristan-harris.md" "cathy-oneil.md"
        "tim-berners-lee.md" "vint-cerf.md" "radia-perlman.md" "werner-vogels.md"
        "martin-fowler.md" "brendan-gregg.md" "kelsey-hightower.md" "jessie-frazelle.md"
    )
    
    for agent_file in "${AGENT_FILES[@]}"; do
        if [ -f "$CLAUDE_DIR/agents/$agent_file" ]; then
            rm -f "$CLAUDE_DIR/agents/$agent_file"
            REMOVED_AGENTS=$((REMOVED_AGENTS + 1))
        fi
    done
fi

# Remove Icon Agents commands
if [ -d "$CLAUDE_DIR/commands" ]; then
    # Remove main command and pod-specific commands
    COMMAND_FILES=(
        "icon-review.md"
        "icon-programming-review.md"
        "icon-security-review.md"
        "icon-design-review.md"
        "icon-business-review.md"
        "icon-data-ai-review.md"
        "icon-product-policy-review.md"
        "icon-platform-operations-review.md"
    )
    
    for cmd_file in "${COMMAND_FILES[@]}"; do
        if [ -f "$CLAUDE_DIR/commands/$cmd_file" ]; then
            rm -f "$CLAUDE_DIR/commands/$cmd_file"
            REMOVED_COMMANDS=$((REMOVED_COMMANDS + 1))
        fi
    done
fi

echo ""
echo -e "${GREEN}🎉 Uninstall complete!${NC}"
echo -e "${BLUE}📊 Removal Summary:${NC}"
echo -e "  🤖 Expert agents removed: $REMOVED_AGENTS"
echo -e "  ⚡ Commands removed: $REMOVED_COMMANDS"
echo ""

# Check if directories are now empty and offer to remove them
REMAINING_AGENTS=$(find "$CLAUDE_DIR/agents" -name "*.md" 2>/dev/null | wc -l || echo "0")
REMAINING_COMMANDS=$(find "$CLAUDE_DIR/commands" -name "*.md" 2>/dev/null | wc -l || echo "0")

if [ "$REMAINING_AGENTS" -eq 0 ] && [ -d "$CLAUDE_DIR/agents" ]; then
    echo -e "${YELLOW}📁 The agents directory is now empty.${NC}"
    read -p "Remove empty agents directory? [y/N]: " REMOVE_AGENTS_DIR
    case $REMOVE_AGENTS_DIR in
        [yY]|[yY][eE][sS])
            rmdir "$CLAUDE_DIR/agents" 2>/dev/null || true
            echo -e "${GREEN}  ✓ Removed empty agents directory${NC}"
            ;;
    esac
fi

if [ "$REMAINING_COMMANDS" -eq 0 ] && [ -d "$CLAUDE_DIR/commands" ]; then
    echo -e "${YELLOW}📁 The commands directory is now empty.${NC}"
    read -p "Remove empty commands directory? [y/N]: " REMOVE_COMMANDS_DIR
    case $REMOVE_COMMANDS_DIR in
        [yY]|[yY][eE][sS])
            rmdir "$CLAUDE_DIR/commands" 2>/dev/null || true
            echo -e "${GREEN}  ✓ Removed empty commands directory${NC}"
            ;;
    esac
fi

# Check if .claude directory is empty
if [ -d "$CLAUDE_DIR" ] && [ -z "$(ls -A "$CLAUDE_DIR" 2>/dev/null)" ]; then
    echo -e "${YELLOW}📁 The .claude directory is now empty.${NC}"
    read -p "Remove empty .claude directory? [y/N]: " REMOVE_CLAUDE_DIR
    case $REMOVE_CLAUDE_DIR in
        [yY]|[yY][eE][sS])
            rmdir "$CLAUDE_DIR" 2>/dev/null || true
            echo -e "${GREEN}  ✓ Removed empty .claude directory${NC}"
            ;;
    esac
fi

echo ""
echo -e "${YELLOW}💡 Next steps:${NC}"
echo "1. Restart Claude Code to unload the removed components"
echo "2. Icon Agents commands and experts are no longer available"
echo "3. To reinstall, run the install script again"
echo ""
echo -e "${CYAN}Icon Agents has been successfully removed! 👋${NC}"