//
//  Node.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Node: CustomStringConvertible {

	public private(set) var label: Int
	public private(set) var edges: [Edge]

	public var description: String {
		return "\(self.label)"
	}

	public convenience init(withLabel label: Int) {
		self.init(withLabel: label, edges: [])
	}

	public init(withLabel label: Int, edges: [Edge]) {
		self.label = label
		self.edges = edges
	}

	public addEdge(_ edge: Edge) {
		self.edges.insert(edge, at: 0)
	}

}
