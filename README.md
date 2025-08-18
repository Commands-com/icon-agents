# Icon Agents 🏗️

**Legendary programming wisdom at your fingertips**

Transform your development workflow with 56 legendary experts across 7 domains, featuring intelligent multi-domain analysis and direct LLM expert selection.

## 🚀 Quick Start

**Important**: Install Icon Agents in your Claude Code project directory (where you run `claude` commands).

### Installation (Choose One)

```bash
# Clone and install (recommended for developers)
git clone https://github.com/Commands-com/icon-agents.git
cd icon-agents && ./install.sh

# NPX (if you have Node.js)
npx icon-agents@latest

# One-line curl (works everywhere)
curl -fsSL https://raw.githubusercontent.com/Commands-com/icon-agents/refs/heads/main/install.sh | bash

# Manual download
wget https://raw.githubusercontent.com/Commands-com/icon-agents/refs/heads/main/install.sh
chmod +x install.sh && ./install.sh
```

## 🎯 What You Get

### **Main Command: Multi-Domain Analysis**
- **`/icon-review`** - Intelligent analysis that automatically selects experts across all 7 domains

### **Pod-Specific Commands (7 Specialized Reviews)**
- **`/icon-programming-review`** - Code analysis with 8 legendary programmers
- **`/icon-security-review`** - Security analysis with 8 security experts  
- **`/icon-design-review`** - Design analysis with 8 design masters
- **`/icon-business-review`** - Strategy analysis with 8 business leaders
- **`/icon-data-ai-review`** - AI/ML analysis with 8 data science pioneers
- **`/icon-product-policy-review`** - Product analysis with 8 policy experts
- **`/icon-platform-operations-review`** - Infrastructure analysis with 8 platform architects

### **Individual Expert Agents (56 Total)**
All experts are available as individual Task agents for direct consultation.

## 🏗️ Architecture: 7 Pods of Excellence

### **Programming Pod** (8 Experts)
- **Linus Torvalds** - Engineering taste, systems programming, pragmatic design
- **John Carmack** - Performance optimization, empirical analysis, low-level efficiency
- **Rich Hickey** - Simplicity, complexity elimination, functional design
- **Alan Kay** - System evolution, long-term vision, human-centered design
- **Kent Beck** - Test-driven development, refactoring, feedback loops
- **Barbara Liskov** - Data abstraction, contract design, type safety
- **Leslie Lamport** - Distributed systems, formal correctness, concurrency
- **Donald Knuth** - Algorithmic analysis, mathematical rigor, complexity theory

### **Security Pod** (8 Experts)
- **Dan Kaminsky** - DNS security, infrastructure vulnerabilities
- **Katie Moussouris** - Vulnerability management, bug bounty programs
- **Bruce Schneier** - Cryptography, privacy, security economics
- **Mikko Hyppönen** - Malware analysis, threat intelligence
- **Tarah Wheeler** - Cybersecurity policy, international cyber norms
- **Mudge Zatko** - Security research, vulnerability discovery
- **Eva Galperin** - Digital rights, stalkerware research
- **Moxie Marlinspike** - Applied cryptography, Signal protocol

### **Design Pod** (8 Experts)
- **Dieter Rams** - Minimalist functionality, timeless aesthetics
- **Don Norman** - Human-centered design, usability principles
- **Edward Tufte** - Information design, data visualization
- **Jonathan Ive** - Industrial design, material innovation
- **Susan Kare** - Icon design, visual communication
- **Jakob Nielsen** - Usability engineering, interface optimization
- **Kat Holmes** - Inclusive design, accessibility excellence
- **Lou Downe** - Service design, end-to-end user experiences

### **Business Pod** (8 Experts)
- **Clayton Christensen** - Disruptive innovation theory
- **Michael Porter** - Competitive strategy, Five Forces analysis
- **Eric Ries** - Lean startup methodology
- **Steve Jobs** - Product vision, design excellence
- **Jeff Bezos** - Customer obsession, long-term thinking
- **Satya Nadella** - Transformation leadership, growth mindset
- **Reid Hoffman** - Network effects, platform strategy
- **Elon Musk** - First principles thinking, manufacturing innovation

### **Data & AI Pod** (8 Experts)
- **Andrew Ng** - Practical AI education, machine learning accessibility
- **Fei-Fei Li** - Computer vision, human-centered AI
- **Geoffrey Hinton** - Deep learning principles, neural networks
- **Hilary Mason** - Data strategy, business applications
- **Yann LeCun** - Convolutional networks, computer vision
- **Cassie Kozyrkov** - Decision science, statistical thinking
- **DJ Patil** - Data science leadership, social impact
- **Demis Hassabis** - AGI research, neuroscience-inspired AI

### **Product & Policy Pod** (8 Experts)
- **Marty Cagan** - Product management, continuous discovery
- **Gene Kim** - DevOps, systems thinking
- **Joanna Bryson** - AI governance, algorithmic accountability
- **Michelle Zatlyn** - Scaling expertise, operational excellence
- **Julie Zhuo** - Design leadership, user experience strategy
- **Ben Horowitz** - Crisis leadership, organizational culture
- **Tristan Harris** - Humane technology, attention economy ethics
- **Cathy O'Neil** - Algorithmic accountability, bias detection

### **Platform & Operations Pod** (8 Experts)
- **Tim Berners-Lee** - Web architecture, open standards
- **Vint Cerf** - Internet protocols, global networking
- **Radia Perlman** - Network engineering, fault tolerance
- **Werner Vogels** - Cloud architecture, distributed systems
- **Martin Fowler** - Enterprise architecture, evolutionary design
- **Brendan Gregg** - Performance engineering, systems observability
- **Kelsey Hightower** - Cloud native, Kubernetes mastery
- **Jessie Frazelle** - Systems security, container security

## 🧠 How It Works

### **Intelligent Expert Selection**
No more choosing between experts or running all of them. The system:
1. **Analyzes your problem** using direct LLM intelligence (no fragile keyword matching)
2. **Selects 2-3 most relevant experts** from the appropriate domain(s)
3. **Executes in parallel** for fast, comprehensive analysis
4. **Synthesizes results** into unified, actionable recommendations

### **Example Analysis Flow**
```
Your Input: "Slow database queries in our microservices architecture"

AI Analysis: 
- Primary domain: Performance + Architecture + Platform
- Selected experts: John Carmack (performance), Rich Hickey (architecture), Werner Vogels (distributed systems)

Parallel Execution:
🚀 Carmack analyzes query optimization and caching strategies
🧠 Hickey examines architectural complexity and data flow
☁️ Vogels reviews distributed system patterns and consistency

Unified Output: Concrete recommendations with priority levels
```

## 📋 Usage Examples

### **Multi-Domain Analysis**
```bash
/icon-review
# Analyzes your project and automatically selects relevant experts across all domains
```

### **Domain-Specific Analysis**
```bash
/icon-programming-review --source ./src/performance-critical.js
# Focus on programming expertise for code analysis

/icon-security-review --source ./auth-module/
# Security-focused analysis of authentication code

/icon-design-review --source ./mockups/user-flow.figma
# Design analysis of user experience flows
```

### **Individual Expert Consultation**
```bash
# Direct expert access via Task agents
Task(linus-torvalds): "Review this data structure design"
Task(john-carmack): "Analyze these performance bottlenecks"
Task(rich-hickey): "Evaluate this architecture for simplicity"
```

## 🎛️ Installation Options

The interactive installer will ask you:
- **Installation directory** (current directory by default)
- **Which pods to install** (all 7 pods or specific ones)
- **Confirmation** before proceeding

### **Pod Selection**
- **`all`** - Install all 7 pods (56 experts) 
- **Individual pods** - Choose specific domains:
  - `programming` - 8 legendary programmers
  - `security` - 8 security experts  
  - `design` - 8 design masters
  - `business` - 8 business strategists
  - `data-ai` - 8 AI/ML pioneers
  - `product-policy` - 8 product/policy experts
  - `platform-operations` - 8 platform architects

## 🚀 After Installation

### **1. Restart Claude Code**
```bash
# Restart to load new agents and commands
```

### **2. Start Getting Legendary Wisdom**
```bash
# Multi-domain analysis
/icon-review

# Domain-specific analysis  
/icon-programming-review
/icon-security-review
```

## 🗑️ Uninstalling

To remove Icon Agents from your project:

```bash
# Run the uninstall script
./uninstall.sh

# Or if downloaded separately
curl -fsSL https://raw.githubusercontent.com/Commands-com/icon-agents/refs/heads/main/uninstall.sh | bash
```

The uninstall script will:
- Remove all Icon Agents expert files and commands
- Offer to clean up empty directories
- Preserve any other Claude Code configurations

## 🎯 Key Features

- **✅ No Keyword Matching** - Direct LLM expert selection (no fragile patterns)
- **✅ Parallel Execution** - Multiple experts analyze simultaneously (3x faster)
- **✅ Intelligent Selection** - 2-3 most relevant experts, not all 56
- **✅ Manual Overrides** - Force specific experts when needed
- **✅ Multi-Domain Coverage** - 7 specialized domains of expertise
- **✅ Unified Recommendations** - Synthesized insights with priority levels
- **✅ Individual Access** - All 56 experts available as Task agents

## 🏆 Why Icon Agents?

### **Before: Tool Proliferation**
- Separate tools for code review, security analysis, design feedback
- Manual expert selection and sequential execution
- Disconnected insights and conflicting recommendations

### **After: Unified Legendary Wisdom**
- **One system** that understands your multi-domain problems
- **Intelligent orchestration** of the right experts at the right time
- **Parallel analysis** with synthesized, actionable recommendations
- **Legendary expertise** from the most influential minds in technology

## 📚 Documentation

- **Commands**: Detailed command documentation in `commands/*/README.md`
- **Agents**: Individual expert capabilities in `agents/*/[expert].md`
- **Architecture**: Pod-based design principles in `docs/ARCHITECTURE.md`

## 🤝 Contributing

We welcome contributions! See `CONTRIBUTING.md` for guidelines on:
- Adding new legendary experts
- Improving expert selection algorithms
- Enhancing domain coverage
- Optimizing parallel execution

## 📄 License

MIT License - See `LICENSE` for details.

## 🌟 Support the Project

If Icon Agents helps your development workflow, consider:
- ⭐ Starring the repository
- 🐛 Reporting issues and suggestions
- 🔄 Sharing with fellow developers
- 💡 Contributing new expert domains

---

**Transform your development workflow with legendary wisdom. Install Icon Agents today and code with the insights of the greatest minds in technology.**

```bash
npx icon-agents@latest
```

*Legendary expertise, intelligently orchestrated.* 🏗️