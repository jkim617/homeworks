require "byebug"
class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end
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

def bfs(starting_node, target_value)
    # debugger
    queue = [starting_node]
    visited = [starting_node]
    while !queue.empty?

        current = queue.shift

        return current if current.value == target_value

        current.neighbors.each do |neighbor|
            if !visited.include?(neighbor)
                visited << neighbor
                queue << neighbor
            end
        end


    end
    return nil
end

p bfs(a, "b")