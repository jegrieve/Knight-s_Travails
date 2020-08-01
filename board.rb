class Board
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
end

a = Board.new
p a.new_board

