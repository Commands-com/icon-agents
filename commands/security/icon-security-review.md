---
name: "Icon Security Review"
description: "Intelligent security analysis that automatically selects the most relevant legendary security experts for your project and code"
author: "Icon Security Experts"
version: "1.0.0"
category: "security"
tags: ["security", "analysis", "legendary", "experts", "parallel"]
allowed-tools: Task(dan-kaminsky:*), Task(katie-moussouris:*), Task(bruce-schneier:*), Task(mikko-hypponen:*), Task(tarah-wheeler:*), Task(mudge-zatko:*), Task(eva-galperin:*), Task(moxie-marlinspike:*), Bash(git status:*), Bash(git diff:*), Read, Glob, Grep
---

# Icon Security Review

Intelligent security analysis that automatically selects the most relevant legendary security experts based on your project characteristics and security concerns. Executes selected experts in parallel for comprehensive security assessment.

## Available Security Experts

**8 Legendary Security Experts:**
- **Dan Kaminsky**: DNS security, infrastructure vulnerabilities, responsible disclosure
- **Katie Moussouris**: Vulnerability management, bug bounty programs, coordinated disclosure
- **Bruce Schneier**: Cryptography, security analysis, privacy, and security economics
- **Mikko Hyppönen**: Malware analysis, threat intelligence, digital privacy advocacy
- **Tarah Wheeler**: Cybersecurity policy, international cyber norms, inclusive security
- **Mudge Zatko**: Security research, vulnerability discovery, security culture transformation
- **Eva Galperin**: Digital rights, stalkerware research, vulnerable population protection
- **Moxie Marlinspike**: Applied cryptography, Signal protocol, usable encryption

## Security Analysis Process

### 1. **Gather Git Context**
- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

### 2. **Security Context Gathering**

I'll analyze your project for security characteristics:

**Technology Stack Security Analysis:**
- Web application frameworks and security patterns
- Cryptographic libraries and implementations
- Authentication and authorization mechanisms
- Data handling and storage security
- Network communication security

**Git Changes Security Review (if applicable):**
- Security-relevant code changes
- Authentication/authorization modifications
- Cryptographic implementation changes
- Input validation and sanitization updates

### 3. **Intelligent Security Expert Selection**

Based on project analysis, I'll select 2-4 most relevant security experts:

**Selection Criteria:**
- **Cryptography focus** → Bruce Schneier + Moxie Marlinspike
- **Web application security** → Mudge Zatko + Katie Moussouris  
- **Infrastructure security** → Dan Kaminsky + Mikko Hyppönen
- **Policy and governance** → Tarah Wheeler + Eva Galperin
- **Threat intelligence** → Mikko Hyppönen + Dan Kaminsky
- **Vulnerability management** → Katie Moussouris + Mudge Zatko

### 3. **Parallel Security Expert Execution**

Selected experts analyze simultaneously:

```
<function_calls>
<invoke name="Task">
<parameter name="subagent_type">[selected-security-expert-1]</parameter>
<parameter name="description">[Expert] security analysis</parameter>
<parameter name="prompt">Analyze this project from your security expertise perspective.

Project Context:
[PROJECT_STRUCTURE_AND_SECURITY_PATTERNS]

Git Changes (if applicable):
[SECURITY_RELEVANT_CHANGES]

Focus on your core security expertise:
[EXPERT_SPECIFIC_SECURITY_FOCUS]

Provide security analysis with concrete, actionable recommendations.</parameter>
</invoke>
[Additional security experts in parallel...]
</function_calls>
```

**Benefits of Parallel Security Analysis:**
- **Comprehensive**: Multiple security perspectives simultaneously
- **Fast**: Parallel execution (up to 4x faster than sequential)
- **Specialized**: Each expert applies their specific security domain
- **Thorough**: Different security concerns covered by different experts

<function_results>
[Security expert analyses will appear here when executed]
</function_results>

## Expected Security Review Output

```
# 🛡️ ICON SECURITY REVIEW

## Overall Security Assessment: [SECURE / MOSTLY SECURE / VULNERABILITIES FOUND / HIGH RISK]

## Security Expert Analysis

### [Selected Security Expert 1]: [Security Score]
**Focus Area**: [Cryptography/Infrastructure/Policy/etc.]
**Key Findings**:
- [Specific security findings]
**Recommendations**:
- [Actionable security improvements]

### [Selected Security Expert 2]: [Security Score]
**Focus Area**: [Different security domain]
**Key Findings**:
- [Additional security concerns]
**Recommendations**:
- [Complementary security measures]

## Unified Security Recommendations

### 🚨 Critical Security Issues
- [Immediate security threats requiring urgent attention]

### ⚠️ Security Concerns  
- [Important security improvements needed]

### 🔧 Security Hardening
- [Proactive security enhancements]

### 📋 Security Best Practices
- [Long-term security improvements and policies]

## Security Compliance & Standards
- [Relevant security standards and compliance requirements]
- [Industry-specific security guidelines]
```

## Common Security Focus Areas

**Application Security:**
- Input validation and sanitization
- Authentication and authorization
- Session management
- OWASP Top 10 compliance

**Infrastructure Security:**
- Network security and segmentation
- Container and cloud security
- Infrastructure as code security
- Secrets management

**Cryptographic Security:**
- Encryption implementation review
- Key management practices
- Protocol security analysis
- Random number generation

**Privacy and Data Protection:**
- Data classification and handling
- Privacy by design principles
- GDPR and privacy compliance
- Data minimization practices

This command provides focused security expertise from the legendary security pod, automatically selecting the most relevant experts for your specific security challenges.