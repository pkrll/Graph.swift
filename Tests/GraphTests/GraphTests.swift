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

	static var allTests = [
		("testNodeCreation", testNodeCreation),
		("testNodeAddEdge", testNodeAddEdge),
		("testNodeProperties", testNodeProperties),
		("testGraphCreation", testGraphCreation),
		("testGraphAddNode", testGraphAddNode),
		("testGraphSubscript", testGraphSubscript)
	]
}
