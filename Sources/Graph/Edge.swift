//
//  Edge.swift
//  Dijkstra
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

class Edge {

	public let toNode: Node
	public let fromNode: Node

	init(from: Node, to toNode: Node) {
		self.toNode = toNode
		self.fromNode = from
	}

}
