from collections import defaultdict
from IPython.display import Image, display
import pydot


class Graph:
    def __init__(self):
        self.graph = defaultdict(list)

    def addEdge(self, u, v):
        self.graph[u].append(v)

    def DFSUtil(self, v, visited):
        visited.add(v)
        print(v, end="")
        for neighbour in self.graph[v]:
            if neighbour not in visited:
                self.DFSUtil(neighbour, visited)

    def DFS(self, v):
        visited = set()
        self.DFSUtil(v, visited)

visGraph = pydot.Dot(graph_type='digraph')
node0 = pydot.Node("0")
visGraph.add_node(node0)
node1 = pydot.Node("1")
visGraph.add_node(node1)
node2 = pydot.Node("2")
visGraph.add_node(node2)
node3 = pydot.Node("3")
visGraph.add_node(node3)
node4 = pydot.Node("4")
visGraph.add_node(node4)

g = Graph()
g.addEdge(0, 1)
visGraph.add_edge(pydot.Edge(node0, node1))
g.addEdge(0, 3)
visGraph.add_edge(pydot.Edge(node0, node3))
g.addEdge(1, 2)
visGraph.add_edge(pydot.Edge(node1, node2))
g.addEdge(1, 3)
visGraph.add_edge(pydot.Edge(node1, node3))
g.addEdge(2, 1)
visGraph.add_edge(pydot.Edge(node2, node1))
g.addEdge(2, 3)
visGraph.add_edge(pydot.Edge(node2, node3))
g.addEdge(2, 4)
visGraph.add_edge(pydot.Edge(node2, node4))
g.addEdge(3, 3)
visGraph.add_edge(pydot.Edge(node3, node3))
visGraph.write_png('DFS.png')
print("Following is DFS from (Starting from vertex 2)")
display(Image(filename='DFS.png'))
g.DFS(2)