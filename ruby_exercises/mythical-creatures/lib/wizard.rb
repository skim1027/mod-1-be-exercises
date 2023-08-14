class Wizard
    attr_reader :name, :bearded
    def initialize(name, bearded = false)
        @name = name
        @bearded = bearded
        @cast_spell = 0
        
    end
    
    def bearded?
        if name == "Ben"
            true 
        else
            false
        end
    end
   
=begin
also tried

def bearded?
    @bearded = true || false
end

but this didn't work, and I kept getting error
=end

    def incantation(power)
        @power = "sudo " + power
    end

    def rested?
        @rested = true
    end

    def cast
        @cast = "MAGIC MISSILE!"
    end

    def cast_spell
        @rested == false if @cast_spell >= 3 
    end

end