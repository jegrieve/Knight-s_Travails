class Knight
    def initialize(position)
        @position = position
        @parent = nil
        @children = []
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
a = Knight.new([3,3])
p a.possible_moves([3,3])

