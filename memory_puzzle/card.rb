class Card
    def initialize(face_value)
        @face_value = face_value
        @face_up = true
    end

    attr_accessor :face_up, :face_value


    def hide
        face_up = false
    end

    def reveal
        face_up = true
    end

    def ==(inst)
        self.face_value == inst.face_value
    end

end