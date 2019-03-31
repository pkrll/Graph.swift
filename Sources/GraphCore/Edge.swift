//
//  Edge.swift
//  GraphCore
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

public class Edge {

	public let incoming: Node
	public let outgoing: Node
	public let weight: Int

	convenience init(from incoming: Node, to outgoing: Node) {
		self.init(from: incoming, to: outgoing, withWeight: 0)
	}

	init(from incoming: Node, to outgoing: Node, withWeight weight: Int) {
		self.incoming = incoming
		self.outgoing = outgoing
		self.weight = weight
	}

}
