# The right way to search evolving graphs

Jiahao Chen ([@jiahao](https://github.com/jiahao)), MIT CSAIL 
and
Weijian Zhang ([@weijianzhang](https://github.com/weijianzhang)), School of Mathematics, University of Manchester

**Abstract**: Evolving graphs arise in many different contexts
 where the interrelations between data elements change over
 time. We present a breadth first search (BFS) algorithm for
 evolving graphs that can track (active) nodes correctly. Using
 simple examples, we show that naïve matrix-matrix multiplication
 on time-dependent adjacency matrices miscounts the number
 of temporal paths. By mapping an evolving graph to an
 adjacency matrix of the equivalent static graph, we prove
 the properties of the BFS algorithm using the properties of
 the adjacency matrix. Finally, demonstrate how the BFS over
 evolving graphs can be applied to mining citation networks.
 

## How to compile this manuscript
 
You will need a LaTeX distribution such as TeXLive that has the `latexmk` utility.

Simply clone this git repository and run
 
 ```sh
     make
 ```
 
The result is an `output` directory containing the compiled PDF as `output/paper.pdf`.

## Related code

[EvolvingGraphs.jl](https://github.com/weijianzhang/EvolvingGraphs.jl) is a Julia package
containing an efficient implementation for the breadth-first search on an evolving graph.
