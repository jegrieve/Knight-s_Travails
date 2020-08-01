require_relative "board.rb"

    def knight_moves(starting, target)
        moves = Board.new.bfs(starting, target)
        steps = moves.length
        puts "You made it in #{steps} moves! Here's your path:"
        moves.each do |m|
            p m
        end
    end


knight_moves([3,3], [7,7])