import XCTest
@testable import Graph
@testable import GraphCore

final class GraphTests: XCTestCase {

	func testNodeCreation() {
		let label = 0
		let node = Node(withLabel: label)
		XCTAssertEqual(node.label, label)
	}

	func testNodeAddEdge() {
		let source = Node(withLabel: 0)
		let target = Node(withLabel: 1)

		XCTAssertEqual(source.numberOfEdges, 0)
		XCTAssertEqual(target.numberOfEdges, 0)

		source.addEdge(to: target)
		XCTAssertEqual(source.numberOfEdges, 1)
		XCTAssertEqual(target.numberOfEdges, 0)
	}

	func testNodeProperties() {
		let node = Node(withLabel: 0)
		node["color"] = "Blue"

		XCTAssertNotNil(node["color"])
		XCTAssertEqual(node["color"] as! String, "Blue")

		node["color"] = "Red"
		XCTAssertEqual(node["color"] as! String, "Red")

		node.setProperty("color", to: "Yellow")
		XCTAssertEqual(node["color"] as! String, "Yellow")
	}

	func testGraphCreation() {
		let graph = Graph()
		XCTAssertEqual(graph.size, 0)
	}

	func testGraphAddNode() {
		let graph = Graph()

		graph.addNode(withLabel: 1)
		XCTAssertEqual(graph.size, 1)
		graph.addNode(withLabel: 2)
		XCTAssertEqual(graph.size, 2)
		graph.addNode(withLabel: 3)
		XCTAssertEqual(graph.size, 3)
	}

	func testGraphSubscript() {
		let graph = Graph()

		var node = graph[5]
		XCTAssertNil(node)

		graph.addNode(withLabel: 3)

		node = graph[3]
		XCTAssertNotNil(node)
		XCTAssertEqual(node!.label, 3)
	}

	func testGraph() {
		let graph = Graph()

		graph.addNode(withLabel: 0)
		graph.addNode(withLabel: 1)
		graph.addNode(withLabel: 2)

		let target = Node(withLabel: 3)
		graph.addNode(target)

		XCTAssertEqual(graph.size, 4)

		let weights = [0: [2, 5], 1: [5], 2: [1]]

		XCTAssertTrue(graph.addEdge(from: 0, to: 1, withWeight: weights[0]![0]))
		XCTAssertTrue(graph.addEdge(from: 0, to: 2, withWeight: weights[0]![1]))
		XCTAssertTrue(graph.addEdge(from: 1, to: 3, withWeight: weights[1]![0]))
		XCTAssertTrue(graph.addEdge(from: 2, to: 3, withWeight: weights[2]![0]))
		XCTAssertFalse(graph.addEdge(from: 5, to: 3, withWeight: 0))

		for node in graph.nodes {
			XCTAssertNil(node["visited"])
			var index = 0

			for edge in node.edges {
				XCTAssertEqual(edge.weight, weights[node.label]![index])
				index += 1
			}

			node["visited"] = true
			XCTAssertNotNil(node["visited"])
			XCTAssertTrue(node["visited"] as! Bool)
		}
	}

	static var allTests = [
		("testNodeCreation", testNodeCreation),
		("testNodeAddEdge", testNodeAddEdge),
		("testNodeProperties", testNodeProperties),
		("testGraphCreation", testGraphCreation),
		("testGraphAddNode", testGraphAddNode),
		("testGraphSubscript", testGraphSubscript),
		("testGraph", testGraph)
	]
}
