require_relative "./card.rb"
# require "byebug"
class Board

    def initialize()
        @board = Array.new(4) {Array.new(4, "")}
        # self.populate
    
    end

    attr_reader :board

    def sample_16()
        sample = []
        while sample.length < 8
            letter = ("A".."Z").to_a.sample 
            sample << letter if !sample.include?(letter)
        end
        sample.concat(sample)
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    

    def []=(pos,value)
        row, col = pos
        @board[row][col]=value
    end

    def populate
        sample_set = sample_16()
        
        (0...4).each do |row|
            (0...4).each do |col|
                random_l = sample_set.sample
                
                @board[row][col] = Card.new(random_l)
                sample_set.delete_at(sample_set.index(random_l))

            end
        end
    end

    def print_faceup
        
        @board.each do |row| 
            
            puts row.map{|inst| inst.face_value}.join(" ")
        end
    end

    # @board[pos1] == @board[pos2] changee

end