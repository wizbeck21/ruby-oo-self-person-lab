# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end
    
    def hygiene=(num)
        @hygiene = num
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
    end

    def clean?
         hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(paycheck)
        self.bank_account = self.bank_account += paycheck
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(hygiene)
        @happiness += 2
        self.happiness=(happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end

end