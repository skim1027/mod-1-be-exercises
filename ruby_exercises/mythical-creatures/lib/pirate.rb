class Pirate
    attr_reader :name, :job, :cursed, :booty
    def initialize(name, job = "Scallywag", booty = 0)
        @name = name
        @job = job
        @cursed = false
        @heinous_act = 0
        @booty = 0
    end

    def cursed?
        cursed
    end

    def commit_heinous_act
        @heinous_act += 1
        @cursed = true if @heinous_act > 2
    end
   
    def rob_ship
        @booty = @booty += 100
      
    end

end