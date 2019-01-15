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
    
    func testAllNodes() {
        let label = 0
        let label2 = 0
        let node1 = Node<String>(withLabel: label, edges: [])
        let node2 = Node<String>(withLabel: label2, edges: [])
        let nodeArr = [node1, node2]
        let g = Graph<String>(withNodes: nodeArr)
        
        let toRet = g.allNodes
        print("List of the nodes: ")
        print(toRet)
        let num = g.numberOfNodes
        XCTAssertEqual(num, 2)
    }

    func testAddNode() {
        let label = 0
        let label2 = 0
        let label3 = 0
        let label4 = 0
        let node1 = Node<String>(withLabel: label, edges: [])
        let node2 = Node<String>(withLabel: label2, edges: [])
        let nodeArr = [node1, node2]
        let g = Graph<String>(withNodes: nodeArr)
        
        let node3 = Node<String>(withLabel: label3, edges: [])
        let node4 = Node<String>(withLabel: label4, edges: [])
        
        g.addNode(node3)
        print("Nodes:")
        print(g.nodes)
        g.addNode(node4)
        
        let num = g.numberOfNodes
        
        XCTAssertEqual(num, 4)
        
    }
    
    func testAddNodeWithLabel() {
        let label = 0
        let label2 = 0
        //let label3 = 0
        //let label4 = 0
        let label3 = 0
        let node1 = Node<String>(withLabel: label3, edges: [])
        let nodeArr = [node1]
        let g = Graph<String>(withNodes: nodeArr)
        g.addNode(withLabel: label)
        print("Nodes:")
        print(g.nodes)
        g.addNode(withLabel: label2)
        
        let num = g.numberOfNodes
        XCTAssertEqual(num, 3)
        //XCTAssertEqual(num, 4)
        
    }
    
	static var allTests = [
		("testNodeCreation", testNodeCreation)
	]
}
