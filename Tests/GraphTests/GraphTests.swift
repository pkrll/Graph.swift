import XCTest
@testable import Graph
@testable import GraphCore

final class GraphTests: XCTestCase {

	func testNodeCreation() {
		let label = 0
		let node = Node(withLabel: label, neighbours: [])
		XCTAssertEqual(node.label, label)
	}

	static var allTests = [
		("testNodeCreation", testNodeCreation)
	]
}
