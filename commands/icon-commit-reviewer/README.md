# Icon Commit Reviewer

**Legendary code review from all three perspectives** - analyze git commits through the eyes of Linus Torvalds, John Carmack, and Rich Hickey.

## Overview

The Icon Commit Reviewer combines the engineering philosophies of three legendary programmers to provide comprehensive code analysis of your git commits:

- **🐧 Linus Torvalds**: Eliminate over-design, focus on data structures, demand good taste
- **🚀 John Carmack**: Empirical performance analysis, cache efficiency, systematic optimization
- **🧠 Rich Hickey**: Eliminate accidental complexity, separate concerns, simple information models

## What It Reviews

### Git Commit Scope
- **Staged changes**: Ready-to-commit code
- **Unstaged changes**: Work-in-progress modifications
- **All changes**: Both staged and unstaged
- **Last commit**: Most recent commit in history
- **Branch**: All commits in current branch vs main/master

### Analysis Perspectives

#### Linus Torvalds Analysis
- **Good Taste Evaluation**: Does the code solve problems elegantly?
- **Data Structure Focus**: Are the core data relationships clean?
- **Complexity Elimination**: Remove unnecessary special cases
- **Pragmatic Assessment**: Does it solve real problems simply?

#### John Carmack Analysis
- **Performance Bottlenecks**: Hot path identification and optimization
- **Memory Layout**: Cache-friendly data organization
- **Algorithmic Efficiency**: Big-O and practical performance
- **Hardware Consciousness**: Platform-specific optimization opportunities

#### Rich Hickey Analysis
- **Complecting Detection**: Identify braided/tangled concepts
- **State vs Identity**: Proper separation of concerns
- **Information Modeling**: Simple, composable data representations
- **Accidental Complexity**: Remove non-essential complications

## Usage Examples

```bash
# Review all staged changes with comprehensive analysis
/icon-commit-review

# Quick review focusing on Linus's perspective
/icon-commit-review --focus=linus --detail_level=quick

# Review unstaged changes with Carmack's performance focus
/icon-commit-review --scope=unstaged --focus=carmack

# Review and auto-commit if all perspectives approve
/icon-commit-review --scope=staged --auto_commit=yes
```

## Output Format

### 🏆 Overall Verdict
**LEGENDARY APPROVAL** / **NEEDS WORK** / **REWRITE REQUIRED**

### 🐧 Linus Perspective
- **Taste Score**: Good taste / Acceptable / Garbage
- **Fatal Issues**: Direct criticism of worst offenses
- **Core Judgment**: Keep/rewrite with reasoning
- **Linus-style Fix**: Specific improvement steps

### 🚀 Carmack Perspective  
- **Performance Score**: Optimized / Acceptable / Bottleneck
- **Hot Path Analysis**: Critical performance issues
- **Optimization Opportunities**: Specific improvements
- **Empirical Recommendations**: Measurable next steps

### 🧠 Hickey Perspective
- **Simplicity Score**: Simple / Complex / Complected
- **Complexity Analysis**: Accidental vs essential
- **Information Model**: Data representation quality
- **Functional Improvements**: Separation and composition

### 📊 Unified Recommendations
- **Immediate Actions**: Fix-now items all legends agree on
- **Performance Wins**: Low-effort, high-impact optimizations  
- **Architectural Improvements**: Long-term structural changes
- **Best Practices**: Prevent similar issues in future

## Integration Features

- **Auto-commit**: Commit changes if all perspectives approve
- **Detailed Reports**: Save comprehensive analysis to files
- **Focus Modes**: Emphasize specific legendary perspective
- **Scope Control**: Review exactly what you want analyzed

## Philosophy Integration

This command embodies the core principles that made these programmers legendary:

- **Linus**: "Bad programmers worry about the code. Good programmers worry about data structures."
- **Carmack**: "The optimization details are not a reflection of the values of the way I optimized it."  
- **Hickey**: "Simplicity is the ultimate sophistication. Simple is not easy."

Transform your commits into legendary code through the wisdom of the masters.