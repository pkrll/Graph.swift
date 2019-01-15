//
//  Node.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Node<T> {
    /**
     *  The label of the node.
     *  @type Int
     */
    public private(set) var label: Int
    /**
     *  The edges of the node.
     *  @type Array<Edge>
     */
    //public private(set) var edges: [Edge<T>]
    public private(set) var edges: [Edge<T>]
    /**
     *  A list of properties.
     *  @type Array<T>
     */
    //public var properties: [T]
    /**
     *  Initializer.
     *
     *  - Parameter withLabel: The label of the node.
     */
    /*public init(withLabel: Int) {
        self.label = withLabel
    }*/
    
    public init(withLabel: Int, edges: [Edge<T>]) {
        self.label = withLabel
        self.edges = edges
    }
    /**
     *  Setter/getter for user-defined properties.
     *  @type Any
     */
    //public subscript(_ propertyName: String) -> Any {}
    
}
