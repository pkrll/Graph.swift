//
//  Edge.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Edge {

	public let incoming: Node
	public let outgoing: Node

	init(from incoming: Node, to outgoing: Node) {
		self.incoming = incoming
		self.outgoing = outgoing
	}

}
