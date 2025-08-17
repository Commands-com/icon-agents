---
name: "Icon Expert Review"
description: "Intelligent expert analysis that automatically selects the right legendary programmers for your problem"
author: "Icon Programming Legends"
version: "2.0.0"
category: "intelligent-analysis"
tags: ["expert", "analysis", "intelligent", "parallel", "legendary"]
allowed-tools: Task(linus-torvalds:*), Task(john-carmack:*), Task(rich-hickey:*), Task(donald-knuth:*), Task(alan-kay:*), Task(kent-beck:*), Task(leslie-lamport:*), Task(barbara-liskov:*)
---

# Icon Expert Review

Intelligent expert analysis that automatically selects the right legendary programmers for your problem and executes them in parallel for optimal performance.

## Expert Selection Process

I'll analyze your problem and directly select the most relevant legendary programmers for review:

**Available Experts:**
- **Linus Torvalds**: Engineering taste, systems programming, pragmatic design
- **John Carmack**: Performance optimization, empirical analysis, low-level efficiency  
- **Rich Hickey**: Simplicity, complexity elimination, functional design
- **Alan Kay**: System evolution, long-term vision, human-centered design
- **Kent Beck**: Test-driven development, refactoring, feedback loops
- **Barbara Liskov**: Data abstraction, contract design, type safety
- **Leslie Lamport**: Distributed systems, formal correctness, concurrency
- **Donald Knuth**: Algorithmic analysis, mathematical rigor, complexity theory

### 1. **Direct Expert Selection**

I'll analyze the actual problem characteristics and select 2-3 most relevant experts from our 8 legendary programmers.

### 2. **Intelligent Analysis & Parallel Execution**

Based on analyzing your problem, I'll:
1. **Determine the primary concerns** (performance, architecture, quality, etc.)
2. **Select the most relevant 2-3 experts** for those specific concerns
3. **Execute experts in parallel** for fast, comprehensive analysis
4. **Synthesize results** into unified recommendations

### 3. **Generic Parallel Expert Execution**

After selecting the relevant experts, I'll spawn them simultaneously using this pattern:

```
<function_calls>
<invoke name="Task">
<parameter name="subagent_type">[selected-expert]</parameter>
<parameter name="description">[Expert] problem analysis</parameter>
<parameter name="prompt">Analyze this problem from your [domain] perspective.

Focus on your core expertise:
- [Expert-specific focus areas]

Problem context:
[ACTUAL_PROBLEM_DESCRIPTION]

Provide your analysis with concrete recommendations.</parameter>
</invoke>
[Additional selected experts in parallel...]
</function_calls>
```

**Benefits of Parallel Execution:**
- **Speed**: Multiple experts analyze simultaneously (3x faster than sequential)
- **Efficiency**: Only relevant experts are loaded and executed  
- **Comprehensive**: Different expert perspectives on the same problem
- **Focused**: Each expert applies their specific domain expertise

## Output Format

```
# 🎯 ICON EXPERT REVIEW

## Overall Assessment: [EXCELLENT / GOOD / NEEDS WORK / REQUIRES REDESIGN]

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

## Manual Override Options

While the system intelligently selects experts, you can override:

- `focus: "performance"` → Force performance expert selection
- `focus: "architecture"` → Force architecture expert selection  
- `focus: "quality"` → Force quality expert selection
- `focus: "all"` → Include all relevant experts for comprehensive analysis

## Panel Synthesis

After gathering the selected expert analyses, I'll synthesize their perspectives into unified recommendations that balance their diverse expertise.