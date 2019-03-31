//
//  Graph.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Graph {

	public private(set) var nodes: [Node] = []

	public var size: Int {
		return self.nodes.count
	}

	public subscript(_ nodeLabel: Int) -> Node? {
		for node in self.nodes where node.label == nodeLabel {
			return node
		}

		return nil
	}

	public func addNode(withLabel label: Int) {
		let node = Node(withLabel: label)
		self.nodes.insert(node, at: 0)
	}

	public func addNode(_ node: Node) {
		let size = self.nodes.count
		let node = Node(withLabel: size)
		self.nodes.insert(node, at: size)
	}

	public func addEdge(from label: Int, to toLabel: Int, withWeight weight: Int) {

	}
}
