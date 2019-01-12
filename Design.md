## Design document

* [Classes](#classes)
	* [Graph](#graph)
	* [Node](#node)
	* [Edge](#edge)
* [Usage](#usage)
	* [Creating graphs](#creating-graphs)

### Classes

#### Graph

The ``Graph`` object represents the graph, consisting of vertices and edges.

```swift
public class Graph {
	/**
	 *  List of nodes.
	 *  @type Array<Edge>
	 */
	public private(set) var nodes: [Node]
	/**
	 *  Creates and adds a node to the graph.
	 *
	 *  - Parameter withLabel: The label of the node
	 */
	public func addNode(withLabel: Int)
	/**
	 *  Adds a node to the graph.
	 *
	 *  - Parameter node: The node to add
	 */
	public func addNode(_ node: Node)
	/**
	 *  Adds an edge between two nodes to the graph.
	 *
	 *  - Parameter from:       Label of the outgoing node
	 *  - Parameter to:         Label of the incoming node
	 *  - Parameter withWeight: The weight of the edge
	 */
	public func addEdge(from: Int, to: Int, withWeight: Int)
	/**
	 *  Getter for node with specified label.
	 *  @type Node
	 */
	public subscript(_ nodeLabel: Int) -> Node
}
```

#### Node

The ``Node`` object represents the node of a graph.

```swift
public class Node<T> {
	/**
	 *  The label of the node.
	 *  @type Int
	 */
	public private(set) var label: Int
	/**
	 *  The edges of the node.
	 *  @type Array<Edge>
	 */
	public private(set) var edges: [Edge]
	/**
	 *  A list of properties.
	 *  @type Array<T>
	 */
	public var properties: [T]
	/**
	 *  Initializer.
	 *
	 *  - Parameter withLabel: The label of the node.
	 */
	public init(withLabel: Int)
	/**
	 *  Setter/getter for user-defined properties.
	 *  @type Any
	 */
	public subscript(_ propertyName: String) -> Any
}
```

#### Edge

The ``Edge`` object represents the edge between two nodes.

```swift
public class Edge {
	/**
	 *  The outgoing node.
	 *  @type Node
	 */
	public let outgoing: Node
	/**
	 *  The incoming node.
	 *  @type Node
	 */
	public let incoming: Node
	/**
	 *  The weight of the edge.
	 *  @type Int
	 */
	public let weight: Int
	/**
	 *  Initializer.
	 *
	 *  - Parameter from:       The outgoing node.
	 *  - Parameter to:         The incoming node.
	 *  - Parameter withWeight: The weight of the edge.
	 */
	public init(from: Node, to: Node, withWeight: Int)
}
```

### Usage

#### Creating graphs

```swift
let graph = Graph()

graph.addNode(withLabel: 0)
graph.addNode(withLabel: 1)
graph.addNode(withLabel: 2)

let target = Node(withLabel: 3)

graph.addNode(target)

graph.addEdge(from: 0, to: 1, withWeight: 2)
graph.addEdge(from: 0, to: 2, withWeight: 5)
graph.addEdge(from: 1, to: 3, withWeight: 5)
graph.addEdge(from: 2, to: 3, withWeight: 1)

for node in graph.nodes {

	node['visited'] = true

	for edge in node.edges {
		print("Edge between \(edge.to) and \(edge.from) has weight \(edge.weight)")
	}

}

let start = graph[0]
if start['visited'] == true {
	print("Start node == visited")
}

```
