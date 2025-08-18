# Contributing to Icon Agents 🤝

We welcome contributions to Icon Agents! This guide will help you get started with contributing to our legendary expert system.

## 🎯 Ways to Contribute

### **1. Adding New Legendary Experts**
We're always looking to expand our collection of legendary minds across all domains.

#### Expert Selection Criteria
- **Legendary Status** - Must be widely recognized as a pioneer or master in their field
- **Clear Philosophy** - Should have well-documented principles, methodologies, or approaches
- **Practical Impact** - Their work should have demonstrably influenced how people work in their domain
- **Distinct Voice** - Should offer unique perspectives that complement existing experts

#### How to Add an Expert
1. **Research Phase**
   - Study the expert's key works, speeches, and documented methodologies
   - Identify their core principles and signature approaches
   - Ensure they don't overlap significantly with existing experts

2. **Create Expert File**
   ```bash
   # Create in appropriate pod directory
   agents/[pod-name]/[expert-name].md
   ```

3. **Expert File Structure**
   ```markdown
   # [Expert Name] - [Core Philosophy/Approach]
   
   ## Expertise
   [Brief description of their legendary status and key contributions]
   
   ## Core Principles
   - [Principle 1 with brief explanation]
   - [Principle 2 with brief explanation]
   - [Principle 3 with brief explanation]
   
   ## Signature Approaches
   [Detailed methodologies they're known for]
   
   ## Key Questions They Would Ask
   [Questions this expert would focus on when analyzing code/problems]
   
   ## Analysis Style
   [How they approach problems, their thinking patterns]
   
   ## Example Analysis
   [Sample of how they might review code or analyze a situation]
   ```

4. **Update Configuration**
   - Add expert to `commands.yaml` in appropriate pod section
   - Update install.sh with expert filename in `get_pod_agents()` function
   - Update README.md pod descriptions

### **2. Improving Expert Selection Algorithms**
Help make our intelligent expert selection even smarter.

#### Areas for Improvement
- **Context Analysis** - Better understanding of problem domains
- **Expert Matching** - More accurate selection based on problem type
- **Load Balancing** - Optimal distribution of experts for parallel execution
- **User Preferences** - Learning from user feedback and manual overrides

#### How to Contribute
1. **Analyze Current Selection Logic** in command files
2. **Propose Improvements** via issues with examples
3. **Test with Real Scenarios** using diverse problem types
4. **Document Changes** with before/after comparisons

### **3. Enhancing Domain Coverage**
Expand our 7-pod architecture with new domains or sub-specializations.

#### Potential New Domains
- **Hardware/Electronics** - Circuit design, chip architecture, embedded systems
- **Academia/Research** - Research methodologies, academic excellence
- **Creative/Media** - Content creation, storytelling, media production
- **Finance/Economics** - Financial systems, economic theory, fintech

#### Domain Requirements
- **8 Legendary Experts** minimum per domain
- **Clear Differentiation** from existing domains
- **Practical Applications** for software development contexts
- **Cross-Domain Synergy** - how it complements existing pods

### **4. Optimizing Parallel Execution**
Improve performance and resource usage.

#### Focus Areas
- **Expert Scheduling** - Optimal ordering of expert execution
- **Resource Management** - Memory and processing efficiency
- **Result Synthesis** - Better combination of multiple expert outputs
- **Error Handling** - Graceful degradation when experts fail

## 📝 Contribution Guidelines

### **Code Style**
- **Shell Scripts** - Follow existing patterns in `install.sh` and `cli.js`
- **Markdown** - Use consistent formatting matching existing agent files
- **YAML** - Maintain structure and indentation in `commands.yaml`

### **Testing Requirements**
Before submitting contributions:

1. **Installation Testing**
   ```bash
   # Test all installation methods
   git clone https://github.com/Commands-com/icon-agents.git && cd icon-agents && ./install.sh
   npx icon-agents@latest  # (after publishing)
   curl -fsSL [install-url] | bash
   ```

2. **Expert Functionality**
   ```bash
   # Test new experts as Task agents
   Task([expert-name]): "Test prompt"
   ```

3. **Command Integration**
   ```bash
   # Test pod-specific commands
   /icon-[domain]-review
   ```

### **Documentation Standards**
- **Clear Examples** - Include practical usage examples
- **Consistent Voice** - Match the tone of existing documentation
- **Comprehensive Coverage** - Document all new features and changes
- **User-Focused** - Write from the user's perspective

## 🚀 Getting Started

### **1. Fork and Clone**
```bash
git clone https://github.com/[your-username]/icon-agents.git
cd icon-agents
```

### **2. Create Feature Branch**
```bash
git checkout -b feature/add-[expert-name]
# or
git checkout -b enhancement/improve-selection-algorithm
```

### **3. Make Changes**
Follow the guidelines above for your specific contribution type.

### **4. Test Thoroughly**
```bash
# Test installation
./install.sh

# Test your changes
[test commands specific to your contribution]
```

### **5. Submit Pull Request**
- **Clear Title** - Describe what your PR accomplishes
- **Detailed Description** - Explain the reasoning and implementation
- **Testing Evidence** - Show that your changes work as expected
- **Documentation Updates** - Include any necessary doc changes

## 🎯 Pull Request Template

```markdown
## What does this PR do?
[Brief description of changes]

## What type of contribution is this?
- [ ] New legendary expert
- [ ] Algorithm improvement
- [ ] Domain expansion
- [ ] Performance optimization
- [ ] Documentation improvement
- [ ] Bug fix

## Testing Done
- [ ] Installation methods tested
- [ ] Expert functionality verified
- [ ] Command integration working
- [ ] Documentation updated

## Screenshots/Examples
[If applicable, show your contribution in action]

## Related Issues
[Reference any issues this PR addresses]
```

## 🔍 Review Process

### **What We Look For**
- **Quality** - High standard expert research and implementation
- **Consistency** - Matches existing patterns and conventions
- **Testing** - Thoroughly tested across installation methods
- **Documentation** - Clear and comprehensive documentation

### **Review Timeline**
- **Initial Response** - Within 48 hours
- **Detailed Review** - Within 1 week
- **Feedback Incorporation** - Iterative improvement process
- **Merge Decision** - Based on quality and fit with project goals

## 💡 Ideas and Suggestions

Have an idea but not ready to implement it? Create an issue with:
- **Clear Description** - What you'd like to see added or improved
- **Use Case** - Why this would be valuable
- **Rough Implementation** - Any initial thoughts on approach

## 🤝 Code of Conduct

- **Respectful Collaboration** - Treat all contributors with respect
- **Constructive Feedback** - Focus on improving the project
- **Attribution** - Credit original expert's work and methodologies accurately
- **Open Source Spirit** - Share knowledge and help others contribute

## 📚 Resources

### **Expert Research**
- **Interviews** - Podcasts, videos, documented interviews
- **Published Works** - Books, papers, articles by the expert
- **Case Studies** - Real examples of their methodologies in action
- **Community** - What practitioners say about their approaches

### **Technical Implementation**
- **Claude Code Documentation** - Understanding the platform
- **MCP Protocols** - How agents and commands work
- **YAML Configuration** - Commands.com integration requirements

---

## 🌟 Recognition

Contributors will be:
- **Listed** in our contributors section
- **Credited** in relevant documentation
- **Acknowledged** in release notes
- **Invited** to help shape the project's future direction

Thank you for helping make Icon Agents the definitive collection of legendary wisdom for developers! 🚀

---

*Questions? Open an issue or reach out to the maintainers. We're here to help you contribute successfully.*