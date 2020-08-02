require_relative "board.rb"
    def knight_moves(starting, target)
        moves = Board.new.bfs(starting, target)
        steps = moves.length
        if steps > 1
        puts "You made it in #{steps} moves! Here's your path:"
        else
        puts "You made it in #{steps} move! Here's your path:"
        end
        moves.each do |m|
            p m
        end
    end

 knight_moves([0,0],[1,2]) #== [[0,0],[1,2]]
 knight_moves([0,0],[3,3]) #== [[0,0],[1,2],[3,3]]
 knight_moves([3,3],[0,0]) #== [[3,3],[1,2],[0,0]]
 knight_moves([0,0],[7,7]) #== [[0,0],[1,2],[2,4],[3,6],[4,4],[5,6],[7,7]]


 
