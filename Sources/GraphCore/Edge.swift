//
//  Edge.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Edge<T> {
    /**
     *  The outgoing node.
     *  @type Node
     */
    public let outgoing: Node<T>
    /**
     *  The incoming node.
     *  @type Node
     */
    public let incoming: Node<T>
    /**
     *  The weight of the edge.
     *  @type Int
     */
    public let weight: Int
    /**
     *  Initializer.
     *
     *  - Parameter from:       The outgoing node.
     *  - Parameter to:         The incoming node.
     *  - Parameter withWeight: The weight of the edge.
     */
    public init(from: Node<T>, to: Node<T>, withWeight: Int) {
        self.outgoing = to
        self.incoming = from
        self.weight = withWeight
    }
}
