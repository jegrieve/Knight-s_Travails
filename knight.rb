class Knight
    attr_reader :position, :children, :parent
    def initialize(position, parent = nil)
        @position = position
        @parent = parent
        @children = possible_moves(position)
    end

    def possible_moves(position) #Ex: [3,3]
        knight_moves = [[1,2],[-1,2],[-1,-2],[1,-2],[2,-1],[2,1],[-2,-1],[-2,1]]
        knight_placements = []
        x,y = position

        knight_moves.each do |move|
            j, i = move
            knight_placements << [j + x, i + y]
        end
        knight_placements
    end
end

