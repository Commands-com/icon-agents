# Linus Torvalds Code Reviewer

> "Bad programmers worry about the code. Good programmers worry about data structures and their relationships." - Linus Torvalds

A no-nonsense code reviewer that applies Linus Torvalds' legendary engineering philosophy to your codebase. Get the same direct, pragmatic feedback that built the world's most successful open source project.

## What This Does

This command channels Linus Torvalds' 30+ years of Linux kernel experience to review your code with legendary directness and technical insight. It focuses on:

- **Good Taste**: Eliminating special cases and complex conditionals
- **Data Structure Design**: Ensuring your data flows make sense
- **Pragmatic Simplicity**: Rejecting over-engineering for real solutions
- **Backward Compatibility**: Never breaking what already works

## Key Features

- **Five-Layer Analysis**: Data structures → Special cases → Complexity → Compatibility → Practicality
- **Taste Scoring**: Get a direct verdict on your code's elegance
- **Linus-Style Feedback**: Sharp, technical criticism that targets the code, not you
- **Concrete Solutions**: Specific fixes that reduce complexity and eliminate edge cases

## Perfect For

- **Senior Engineers** who want uncompromising technical feedback
- **Code Reviews** that need to catch fundamental design issues
- **Refactoring Projects** where you need to identify the worst technical debt
- **Learning** from one of the greatest systems programmers in history

## Sample Output

```
Taste Score: Garbage

Fatal Issues: This function has 4 levels of indentation and 6 special cases for what should be a simple data transformation.

Core Judgment: Needs complete rewrite - you're solving a simple problem with a complex solution.

Key Insights:
- Data structure: You're converting between 3 different representations when you should have one canonical form
- Complexity: All these if/else branches can be eliminated with proper data design
- Risk points: Every special case is a future bug waiting to happen

Linus-style Solution:
1. Define one canonical data structure for this domain
2. All input converters write to that structure
3. All output formatters read from that structure
4. Your 47 lines become 12 lines with zero special cases
```

## Usage Examples

### Basic Code Review
```bash
/linus-code-review source="./src/user-service.js" focus="data-flow"
```

### Full Project Analysis
```bash
/linus-code-review source="https://github.com/user/repo" focus="architecture" 
```

### Specific Function Review
```bash
/linus-code-review source="./auth.py:authenticate_user" focus="complexity"
```

## Parameters

- **source**: Code location (GitHub URL, file path, or function)
- **focus**: Review focus (data-flow, complexity, special-cases, all)
- **severity**: Minimum severity for issues (info, warning, error)
- **save_report**: Generate detailed Linus-style report

## What Makes This Different

Unlike typical code reviewers that focus on style and conventions, this applies Linus's core engineering principles:

1. **Data Structure First**: Reviews your data design before your algorithms
2. **Special Case Elimination**: Identifies where complexity can be designed away
3. **Pragmatic Focus**: Distinguishes real problems from theoretical perfectionism
4. **Systems Thinking**: Considers how changes affect the entire system

## Installation

This command requires:
- Claude Code with MCP support
- File system access for local analysis
- GitHub access for repository analysis

## The Linus Philosophy

> "I'm a damn pragmatist. I don't want the theory, I want something that works."

This tool embodies Linus's approach to code review: direct, technical, and focused on building systems that actually work. Expect honest feedback that will make you a better systems programmer.

## Tips for Best Results

- **Be Ready for Directness**: Linus doesn't sugarcoat technical problems
- **Focus on Data Flow**: The best reviews happen when you understand your data structures
- **Embrace Simplicity**: If the solution feels too clever, it probably is
- **Think Systems**: Consider how your code affects the entire project

Ready to see your code through the eyes of the creator of Linux? Let's find out what Linus thinks of your engineering decisions.