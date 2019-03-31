//
//  Node.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Node: CustomStringConvertible {

	public private(set) var label: Int
	public private(set) var edges: [Edge]

	public var numberOfEdges: Int {
		return self.edges.count
	}

	public var description: String {
		return "\(self.label)"
	}

	public var neighbours: [Node] {
		var nodes: [Node] = []

		for edge in self.edges {
			nodes.insert(edge.outgoing, at: 0)
		}

		return nodes
	}

	public convenience init(withLabel label: Int) {
		self.init(withLabel: label, edges: [])
	}

	public init(withLabel label: Int, edges: [Edge]) {
		self.label = label
		self.edges = edges
	}

	public func addEdge(to target: Node) {
		let edge = Edge(from: self, to: target)
		self.edges.insert(edge, at: 0)
	}

}
