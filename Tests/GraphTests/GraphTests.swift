import XCTest
@testable import Graph
@testable import GraphCore

final class GraphTests: XCTestCase {

	func testNodeCreation() {
		let label = 0
		let node = Node(withLabel: label, edges: [])
		XCTAssertEqual(node.label, label)
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
		("testGraphCreation", testGraphCreation),
		("testGraphAddNode", testGraphAddNode),
		("testGraphSubscript", testGraphSubscript)
	]
}
