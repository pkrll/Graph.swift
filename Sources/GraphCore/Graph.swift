//
//  Graph.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Graph<T> {
    /**
     *  List of nodes.
     *  @type Array<Edge>
     */
    public private(set) var nodes: [Node<T>]
    //public private(set) var nodes: Node<T>
    /**
     *  Creates and adds a node to the graph.
     *
     *  - Parameter withLabel: The label of the node
     */
    public func addNode(withLabel: Int) {}
    /**
     *  Adds a node to the graph.
     *
     *  - Parameter node: The node to add
     */
    public func addNode(_ node: Node<T>) {}
    /**
     *  Adds an edge between two nodes to the graph.
     *
     *  - Parameter from:       Label of the outgoing node
     *  - Parameter to:         Label of the incoming node
     *  - Parameter withWeight: The weight of the edge
     */
    public func addEdge(from: Int, to: Int, withWeight: Int) {}
    /**
     *  Getter for node with specified label.
     *  @type Node
     */
    //public subscript(_ nodeLabel: Int) -> Node<T> {}
    
    public init(withNodes: [Node<T>]){
        self.nodes = withNodes
    }
    
    /**
     * Returns the number of nodes
     *
     *  - Parameter graph: Graph
     */
    var numberOfNodes: Int {
        return self.nodes.count
    }
}
