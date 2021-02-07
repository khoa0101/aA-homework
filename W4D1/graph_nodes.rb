class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = [] 
    end

end

def bfs(starting_node, ending_node)
    visited = []
    queue = [starting_node]
    until queue.empty?
        checking = queue.shift
        return nil if visited.include?(checking)
        return checking if checking.val == ending_node
        checking.neighbors.each do |neighbor|
            queue << neighbor
            visited << checking
        end
    end
    nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")