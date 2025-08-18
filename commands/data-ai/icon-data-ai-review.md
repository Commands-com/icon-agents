---
name: "Icon Data & AI Review"
description: "Intelligent AI/ML analysis that automatically selects the most relevant legendary data science and AI experts for your project"
author: "Icon AI/ML Pioneers"
version: "1.0.0"
category: "data-ai"
tags: ["ai", "ml", "data", "analysis", "legendary", "experts"]
allowed-tools: Task(andrew-ng:*), Task(fei-fei-li:*), Task(geoffrey-hinton:*), Task(hilary-mason:*), Task(yann-lecun:*), Task(cassie-kozyrkov:*), Task(dj-patil:*), Task(sebastian-thrun:*), Read, Glob, Grep
---

# Icon Data & AI Review

Intelligent AI/ML analysis that automatically selects the most relevant legendary data science and AI experts based on your project's AI/ML components and data challenges.

## Available AI/ML Pioneers

**8 Legendary Data & AI Experts:**
- **Andrew Ng**: Practical AI education, systematic implementation, democratized AI
- **Fei-Fei Li**: Computer vision, human-centered AI, visual intelligence
- **Geoffrey Hinton**: Deep learning theory, neural networks, fundamental AI research
- **Hilary Mason**: Data strategy, business applications, data-driven decision making
- **Yann LeCun**: Convolutional networks, self-supervised learning, efficient AI
- **Cassie Kozyrkov**: Decision science, statistical thinking, AI safety
- **DJ Patil**: Data science leadership, team building, social impact
- **Sebastian Thrun**: Autonomous systems, robotics, moonshot thinking

## AI/ML Analysis Process

### 1. **Gather Git Context**
- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

### 2. **AI/ML Context Gathering**

**AI/ML Technology Analysis:**
- Machine learning frameworks and libraries
- Model architectures and training approaches
- Data pipelines and preprocessing
- Model deployment and MLOps practices

### 3. **Intelligent AI Expert Selection**

**Selection Criteria:**
- **Computer Vision** → Fei-Fei Li + Yann LeCun
- **Deep Learning** → Geoffrey Hinton + Yann LeCun
- **Practical AI Implementation** → Andrew Ng + Hilary Mason
- **Data Strategy** → Hilary Mason + DJ Patil
- **AI Safety/Ethics** → Cassie Kozyrkov + Fei-Fei Li
- **Autonomous Systems** → Sebastian Thrun + Yann LeCun

### 4. **Parallel AI Expert Execution**

```
<function_calls>
<invoke name="Task">
<parameter name="subagent_type">[selected-ai-expert-1]</parameter>
<parameter name="description">[Expert] AI/ML analysis</parameter>
<parameter name="prompt">Analyze this project from your AI/ML expertise perspective.

Focus on your core AI expertise:
[EXPERT_SPECIFIC_AI_FOCUS]

Provide AI/ML analysis with concrete, actionable recommendations.</parameter>
</invoke>
</function_calls>
```

This command provides focused AI/ML expertise from the legendary data & AI pod.