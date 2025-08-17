---
name: "Icon Commit Reviewer"
description: "Intelligent commit analysis that automatically selects the most relevant legendary programmers based on your git changes"
author: "Icon Programming Legends"
version: "1.0.0"
category: "review"
tags: ["git", "commit", "review", "legendary", "panel"]
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*)
---

# Icon Commit Reviewer

Intelligent commit analysis that automatically selects the most relevant legendary programmers based on your git changes and executes them in parallel for optimal performance.

## Expert Selection Process

I'll analyze your git changes and directly select the most relevant legendary programmers for review:

### 1. **Gather Git Context**
- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

### 2. **Direct Expert Selection**

I'll analyze the actual code changes and select 2-3 most relevant experts from our 8 legendary programmers:

**Available Experts:**
- **Linus Torvalds**: Engineering taste, systems programming, pragmatic design
- **John Carmack**: Performance optimization, empirical analysis, low-level efficiency  
- **Rich Hickey**: Simplicity, complexity elimination, functional design
- **Alan Kay**: System evolution, long-term vision, human-centered design
- **Kent Beck**: Test-driven development, refactoring, feedback loops
- **Barbara Liskov**: Data abstraction, contract design, type safety
- **Leslie Lamport**: Distributed systems, formal correctness, concurrency
- **Donald Knuth**: Algorithmic analysis, mathematical rigor, complexity theory

### 3. **Intelligent Analysis & Parallel Execution**

Based on analyzing your git changes, I'll:
1. **Determine the primary concerns** (performance, architecture, quality, etc.)
2. **Select the most relevant 2-3 experts** for those specific concerns
3. **Execute experts in parallel** for fast, comprehensive analysis
4. **Synthesize results** into unified recommendations

### 4. **Generic Parallel Expert Execution**

After selecting the relevant experts, I'll spawn them simultaneously using this pattern:

```
<function_calls>
<invoke name="Task">
<parameter name="subagent_type">[selected-expert]</parameter>
<parameter name="description">[Expert] commit analysis</parameter>
<parameter name="prompt">Analyze these git changes from your [domain] perspective.

Focus on your core expertise:
- [Expert-specific focus areas]

Git changes context:
[ACTUAL_GIT_DIFF]

Provide your analysis with concrete recommendations.</parameter>
</invoke>
[Additional selected experts in parallel...]
</function_calls>
```

**Benefits of Parallel Execution:**
- **Speed**: Multiple experts analyze simultaneously (3x faster than sequential)
- **Efficiency**: Only relevant experts are loaded and executed  
- **Comprehensive**: Different expert perspectives on the same changes
- **Focused**: Each expert applies their specific domain expertise

<function_results>
[Selected expert analyses will appear here when executed]
</function_results>

## Expected Output Format

After parallel execution completes, the review will be synthesized into:

```
# 🏆 ICON COMMIT REVIEW

## Overall Verdict: [LEGENDARY APPROVAL / NEEDS WORK / REWRITE REQUIRED]

## Expert Analysis Summary
### [Selected Expert 1]: [Assessment Score]
[Key findings and recommendations]

### [Selected Expert 2]: [Assessment Score]  
[Key findings and recommendations]

### [Selected Expert 3]: [Assessment Score]
[Key findings and recommendations]

## Unified Actions
- 🚨 Fix Now: [Critical issues all experts agree on]
- ⚡ Quick Wins: [Low effort, high impact]
- 🏗️ Long Term: [Architectural improvements]
```

## Panel Synthesis

After gathering the selected expert analyses, I'll synthesize their perspectives into unified recommendations that balance their diverse expertise.