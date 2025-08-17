# Rich Hickey Simplicity Architect

> "Simple is not easy. Easy is not simple." - Rich Hickey

Channel the profound simplicity insights of Rich Hickey, creator of Clojure and one of software's deepest thinkers about complexity. Get architectural guidance that separates essential complexity from accidental complexity through functional programming principles.

## What This Does

This command applies Rich Hickey's revolutionary thinking about software complexity to your architecture. It focuses on:

- **Conceptual Simplicity**: Teasing apart complected (braided) concepts
- **Information Modeling**: Representing data simply without artificial complexity
- **State/Identity/Time Separation**: Eliminating the conflation that causes most bugs
- **Composition Over Complexity**: Building systems from simple, reusable parts

## Key Features

- **Complecting Detection**: Find where different concerns are unnecessarily braided together
- **Information Architecture**: Model the essential data and transformations
- **State Management Analysis**: Separate identity, state, and time properly
- **Functional Design Principles**: Pure functions, immutable data, composition

## Perfect For

- **System Architecture** that needs to scale and evolve
- **Legacy System Simplification** removing accidental complexity
- **Functional Programming** adoption and design
- **Learning** to think about software complexity philosophically

## Sample Output

```
Simplicity Score: Complex

Complecting Analysis: User class braids together identity (email), authentication state, 
session management, and presentation formatting - four separate concerns in one object

Core Issues:
- State Management: Mutable user object conflates identity with current session state
- Coupling: Authentication logic coupled to data storage and presentation
- Abstraction: UserManager hides simplicity behind unnecessary object hierarchy
- Data Model: Using objects where simple maps would be more flexible

Hickey-style Simplifications:

Priority 1 (Fundamental):
- Separate user identity (immutable facts) from session state (temporal values)
- Extract authentication into pure functions operating on user data
- Replace User object with simple map of user attributes

Priority 2 (Structural):
- Use functional authentication: (authenticate user-data credentials) -> session-data
- Replace inheritance hierarchy with data transformation pipeline
- Move from place-oriented to value-oriented programming

Priority 3 (Refinement):
- Pure formatting functions instead of user.toString() methods
- Immutable user records with explicit state transitions
- Compose user operations from simple, reusable functions

Information Model:
- Essential data: {email, hashed-password, profile-data, roles}
- Essential transformations: authenticate, authorize, format-for-display
- Accidental complexity: User class hierarchy, mutable state, mixed concerns
```

## Usage Examples

### Architecture Simplification
```bash
/hickey-simplicity source="./user-management/" focus="complecting"
```

### State Management Review
```bash
/hickey-simplicity source="./state-machine.js" focus="state-identity-time"
```

### Data Model Analysis  
```bash
/hickey-simplicity source="https://github.com/user/api" focus="information-model"
```

## Parameters

- **source**: Code location (GitHub URL, file path, or module)
- **focus**: Analysis focus (complecting, state-identity-time, information-model, composition, all)
- **paradigm**: Target paradigm (functional, hybrid, object-functional)
- **save_report**: Generate detailed simplicity analysis report

## The Hickey Approach

Unlike typical architecture reviews that focus on patterns and frameworks, this applies Hickey's fundamental principles:

1. **Simple vs. Easy**: Choose simple (one concept) over easy (familiar)
2. **Separate Concerns**: Tease apart braided concepts into independent parts  
3. **Value-Oriented**: Immutable data and pure transformations
4. **Information Focus**: Model the domain, not the behavior
5. **Composition**: Build complexity from simple, reusable parts

## What Makes This Different

- **Philosophical Foundation**: Addresses fundamental concepts, not just code structure
- **Conceptual Clarity**: Distinguishes different types of complexity
- **Information Modeling**: Focuses on what information needs to be represented
- **Long-term Thinking**: Designs for maintainability over decades
- **Functional Insights**: Value-oriented programming over place-oriented

## Key Hickey Concepts Covered

- **Complecting**: Finding where concepts are unnecessarily braided together
- **State/Identity/Time**: Proper separation of these conflated concepts
- **Simple vs. Easy**: Choosing objective simplicity over subjective familiarity
- **Information Architecture**: Modeling domains with generic data structures

## The Simplicity Philosophy

> "It is better to have 100 functions operate on one data structure than 10 functions on 10 data structures."

This tool embodies Hickey's approach: separate concerns completely, use generic data structures, and compose solutions from simple parts.

## Installation

This command requires:
- Claude Code with MCP support
- File system access for code analysis
- Understanding of functional programming concepts

## Tips for Best Results

- **Think Information First**: What data does your domain actually need?
- **Identify Complecting**: Where are different concepts braided together?
- **Question Objects**: Can this be simple data + functions instead?
- **Embrace Composition**: How do simple parts combine?
- **Consider Time**: How does information change over time?

## Common Simplifications

- Replace object hierarchies with data + functions
- Separate state from identity with immutable values
- Use maps/vectors instead of custom classes
- Pure functions instead of methods
- Explicit state transitions instead of mutation

Ready to achieve true simplicity? Let's separate the essential from the accidental and build systems that will be maintainable for decades.