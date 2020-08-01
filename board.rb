require_relative "knight.rb"
class Board
    attr_reader :board
    def initialize
        @board = new_board
    end

    def new_board
        board = []
        pos_values = (0..7).to_a
        i = 0
        while i < 8
            pos_values.each do |y|
                board_positions = [i, y]
                board << board_positions
            end
            i += 1
        end
        board
    end

    def bfs(pos, target)
        root_node = Knight.new(pos)
        visited_node = [root_node]
        discovered_queue = []
        while !visited_node.empty?
            parent_node = visited_node.shift
            if parent_node.position == target
                current_node = parent_node
                while current_node.parent 
                    discovered_queue << current_node.position
                    current_node = current_node.parent
                end
                break
            end
            positions = valid_pos?(parent_node.children)
            positions.each do |pos|
                child_node = Knight.new(pos, parent_node)
                visited_node << child_node
            end
        end
        discovered_queue << root_node.position
        discovered_queue.reverse
    end

    def valid_pos?(children)
        valid_positions = []
        children.each do |pos|
            if self.board.include?(pos)
                valid_positions << pos
            end
        end
        valid_positions
    end
end

a = Board.new
p a.bfs([3,3], [3,7])

