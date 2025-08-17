# John Carmack Performance Reviewer

> "The bottleneck is always the thing you're not measuring." - John Carmack

Channel the legendary performance optimization expertise of John Carmack, the programming genius behind Doom, Quake, and revolutionary 3D engines. Get systematic performance analysis that combines empirical measurement with deep hardware understanding.

## What This Does

This command applies John Carmack's decades of performance optimization experience to your code. It focuses on:

- **Empirical Bottleneck Analysis**: Profile first, optimize second - never guess
- **Cache-Efficient Data Design**: Structure data for how CPUs actually work
- **Hot Path Optimization**: Focus effort where it matters most
- **Clean Performance**: Fast code that's still maintainable and readable

## Key Features

- **Systematic Performance Framework**: Algorithmic → Memory → Hot Paths → Abstractions → Platform
- **Bottleneck Identification**: Find the 1% of code that uses 99% of CPU time
- **Cache-Aware Analysis**: Optimize for real hardware memory hierarchies
- **Measurable Improvements**: Specific optimizations with expected performance gains

## Perfect For

- **Performance-Critical Code** that needs to run fast
- **Game Development** and real-time systems
- **Systems Programming** where every cycle counts
- **Learning** from the master of performance optimization

## Sample Output

```
Performance Score: Needs Work

Bottleneck Analysis: Inner loop in processPixels() doing 90% of work with cache-unfriendly access pattern

Key Findings:
- Algorithmic: O(n²) when O(n log n) possible with spatial indexing
- Memory: Random access pattern causing 60% cache miss rate
- Hot paths: Nested loop called 50M times per frame
- Abstractions: Virtual function calls in inner loop adding 15% overhead

Carmack-style Optimizations:

Priority 1 (Critical):
- Restructure pixel data as array-of-structures for sequential access (2.5x speedup expected)
- Replace spatial search with precomputed lookup table (3x speedup expected)

Priority 2 (Important):  
- Move virtual dispatch outside inner loop (15% speedup)
- Use SIMD for 4-pixel parallel processing (1.8x speedup)

Priority 3 (Nice to have):
- Reduce memory allocations with object pool
- Add likely/unlikely branch hints for compiler
```

## Usage Examples

### Performance Bottleneck Analysis
```bash
/carmack-performance source="./renderer.cpp" focus="hot-paths"
```

### Memory Access Optimization
```bash
/carmack-performance source="./physics-engine/" focus="memory-layout"
```

### Algorithm Performance Review
```bash
/carmack-performance source="https://github.com/user/game-engine" focus="algorithms"
```

## Parameters

- **source**: Code location (GitHub URL, file path, or function)
- **focus**: Analysis focus (hot-paths, memory-layout, algorithms, cache-efficiency, all)
- **platform**: Target platform optimization (x86, arm, gpu, generic)
- **profile_data**: Include profiling data for analysis
- **save_report**: Generate detailed performance report

## The Carmack Approach

Unlike typical performance reviews that focus on micro-optimizations, this applies Carmack's systematic methodology:

1. **Measure Everything**: Profile-driven optimization, not guesswork
2. **Data-Oriented Design**: Structure data for cache efficiency
3. **Algorithm Selection**: Choose based on real-world performance, not just Big-O
4. **Hardware Awareness**: Code that works with the CPU, not against it
5. **Clean Architecture**: Maintainable code that can still be optimized

## What Makes This Different

- **Empirical Focus**: Always measure before and after optimizations
- **Cache-Conscious**: Considers real memory hierarchy performance
- **Practical Optimization**: Real performance gains over theoretical improvements
- **Systematic Analysis**: Methodical approach to finding actual bottlenecks
- **Clean Code**: Fast code that's still readable and maintainable

## Famous Carmack Techniques Covered

- **Fast Inverse Square Root**: Creative bit manipulation for performance
- **BSP Trees**: Spatial data structures for efficient processing
- **Cache-Friendly Loops**: Memory access pattern optimization
- **Data Structure of Arrays**: Layout optimization for SIMD and cache

## Performance Philosophy

> "Premature optimization is evil, but so is premature pessimization."

This tool embodies Carmack's approach: write clean code that doesn't make obviously bad performance decisions, then systematically optimize the bottlenecks you can measure.

## Installation

This command requires:
- Claude Code with MCP support
- File system access for code analysis
- Optional: Profiling data integration

## Tips for Best Results

- **Profile First**: Come with profiling data if possible
- **Focus on Hot Paths**: The inner loops matter most
- **Think About Data**: How your data flows through memory matters
- **Measure Results**: Verify that optimizations actually help

Ready to optimize like the master of performance? Let's find those bottlenecks and make your code fly.