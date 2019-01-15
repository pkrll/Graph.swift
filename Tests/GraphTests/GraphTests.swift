import XCTest
@testable import Graph
@testable import GraphCore

final class GraphTests: XCTestCase {

	func testNodeCreation() {
		let label = 0
		let node = Node<String>(withLabel: label, edges: [])
		XCTAssertEqual(node.label, label)
	}
    
    func testGraphCreation() {
        let label = 0
        let label2 = 0
        let node1 = Node<String>(withLabel: label, edges: [])
        let node2 = Node<String>(withLabel: label2, edges: [])
        let nodeArr = [node1, node2]
        let g = Graph<String>(withNodes: nodeArr)
        
        let toRet = g.numberOfNodes
        XCTAssertEqual(toRet, 2)
    }

	static var allTests = [
		("testNodeCreation", testNodeCreation)
	]
}
