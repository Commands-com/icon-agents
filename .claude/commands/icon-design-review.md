---
name: "Icon Design Review"
description: "Intelligent design analysis that automatically selects the most relevant legendary design experts for your project and user experience"
author: "Icon Design Masters"
version: "1.0.0"
category: "design"
tags: ["design", "ux", "ui", "analysis", "legendary", "experts"]
allowed-tools: Task(dieter-rams:*), Task(don-norman:*), Task(edward-tufte:*), Task(jonathan-ive:*), Task(susan-kare:*), Task(jakob-nielsen:*), Task(kat-holmes:*), Task(lou-downe:*), Read, Glob, Grep
---

# Icon Design Review

Intelligent design analysis that automatically selects the most relevant legendary design experts based on your project's design challenges and user experience needs. Executes selected experts in parallel for comprehensive design assessment.

## Available Design Masters

**8 Legendary Design Experts:**
- **Dieter Rams**: Minimalist design principles, timeless aesthetics, sustainable design
- **Don Norman**: Human-centered design, usability principles, cognitive psychology
- **Edward Tufte**: Data visualization excellence, information design, analytical graphics
- **Jonathan Ive**: Industrial design, material innovation, integrated design thinking
- **Susan Kare**: Icon design, visual communication, interface symbolism
- **Jakob Nielsen**: Usability engineering, heuristic evaluation, interface optimization
- **Kat Holmes**: Inclusive design, accessibility excellence, universal design principles
- **Lou Downe**: Service design, end-to-end user experiences, holistic design thinking

## Design Analysis Process

### 1. **Gather Git Context**
- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

### 2. **Design Context Gathering**

I'll analyze your project for design characteristics:

**Interface and Visual Design Analysis:**
- UI components and design patterns
- Visual hierarchy and typography
- Color schemes and accessibility
- Icon systems and visual language
- Responsive design implementation

**User Experience Analysis:**
- User flows and interaction patterns
- Information architecture
- Navigation and wayfinding
- Form design and input patterns
- Error states and feedback systems

**Design System Analysis:**
- Component consistency and reusability
- Design token usage
- Brand consistency
- Documentation and guidelines

### 3. **Intelligent Design Expert Selection**

Based on project analysis, I'll select 2-4 most relevant design experts:

**Selection Criteria:**
- **Minimalist/Clean Design** → Dieter Rams + Jonathan Ive
- **Usability Issues** → Don Norman + Jakob Nielsen
- **Data Visualization** → Edward Tufte + Don Norman
- **Icon/Visual Communication** → Susan Kare + Dieter Rams
- **Accessibility Concerns** → Kat Holmes + Don Norman
- **Service Design** → Lou Downe + Kat Holmes
- **Mobile/Product Design** → Jonathan Ive + Don Norman

### 3. **Parallel Design Expert Execution**

Selected experts analyze simultaneously:

```
<function_calls>
<invoke name="Task">
<parameter name="subagent_type">[selected-design-expert-1]</parameter>
<parameter name="description">[Expert] design analysis</parameter>
<parameter name="prompt">Analyze this project from your design expertise perspective.

Project Context:
[PROJECT_DESIGN_PATTERNS_AND_UI]

Design Challenges:
[SPECIFIC_DESIGN_CONCERNS]

Focus on your core design expertise:
[EXPERT_SPECIFIC_DESIGN_FOCUS]

Provide design analysis with concrete, actionable recommendations.</parameter>
</invoke>
[Additional design experts in parallel...]
</function_calls>
```

**Benefits of Parallel Design Analysis:**
- **Comprehensive**: Multiple design perspectives simultaneously
- **Fast**: Parallel execution (up to 4x faster than sequential)
- **Specialized**: Each expert applies their specific design domain
- **Holistic**: Different aspects of design covered by different experts

<function_results>
[Design expert analyses will appear here when executed]
</function_results>

## Expected Design Review Output

```
# 🎨 ICON DESIGN REVIEW

## Overall Design Assessment: [EXCELLENT / GOOD / NEEDS IMPROVEMENT / MAJOR REDESIGN NEEDED]

## Design Expert Analysis

### [Selected Design Expert 1]: [Design Score]
**Focus Area**: [Usability/Visual/Accessibility/etc.]
**Key Findings**:
- [Specific design observations]
**Recommendations**:
- [Actionable design improvements]

### [Selected Design Expert 2]: [Design Score]
**Focus Area**: [Different design domain]
**Key Findings**:
- [Additional design insights]
**Recommendations**:
- [Complementary design solutions]

## Unified Design Recommendations

### 🚨 Critical Design Issues
- [Major usability or accessibility problems requiring immediate attention]

### ⚡ Quick Design Wins
- [High-impact, low-effort design improvements]

### 🏗️ Strategic Design Improvements
- [Long-term design system and UX enhancements]

### ✨ Design Excellence Opportunities
- [Ways to elevate the design from good to exceptional]

## Design Principles & Guidelines
- [Relevant design principles for this project type]
- [Industry standards and best practices]
- [Accessibility and inclusive design considerations]

## Design System Recommendations
- [Component standardization opportunities]
- [Design token and consistency improvements]
- [Documentation and design process enhancements]
```

## Common Design Focus Areas

**User Experience Design:**
- User journey mapping and optimization
- Information architecture and navigation
- Interaction design and micro-interactions
- User research and testing integration

**Visual Design:**
- Typography and visual hierarchy
- Color theory and accessibility
- Layout and composition principles
- Brand consistency and visual identity

**Interface Design:**
- Component design and design systems
- Responsive and adaptive design
- Mobile-first design principles
- Progressive enhancement strategies

**Accessibility & Inclusion:**
- WCAG compliance and accessibility testing
- Inclusive design practices
- Universal design principles
- Multi-modal interaction support

**Data Visualization:**
- Chart and graph design principles
- Information density optimization
- Interactive data exploration
- Dashboard and analytics design

This command provides focused design expertise from the legendary design pod, automatically selecting the most relevant experts for your specific design challenges and user experience goals.