//
//  Node.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Node: CustomStringConvertible {

	public private(set) var label: Int
	public private(set) var edges: [Edge]
	public private(set) var properties = [String: Any]()

	public var numberOfEdges: Int {
		return self.edges.count
	}

	public var description: String {
		return "\(self.label)"
	}

	public var neighbours: [Node] {
		var nodes: [Node] = []

		for edge in self.edges {
			nodes.append(edge.outgoing)
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
		self.edges.append(edge)
	}

	public func setProperty(_ propertyName: String, to value: Any) {
		self.properties[propertyName] = value
	}

	public subscript(_ propertyName: String) -> Any? {
		get {
			return self.properties[propertyName]
		}
		set(value) {
			self.properties[propertyName] = value
		}
	}

}
