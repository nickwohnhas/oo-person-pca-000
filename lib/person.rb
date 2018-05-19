require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end

 def hygiene=(hygiene)
    @hygiene = hygiene

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
    @hygiene
  end
 end
  # def hygiene=(value)
  #   if value < 10 && value > 0
  #     @hygiene = value
  #   elsif value > 10
  #     @hygiene = 10
  #   else
  #     @hygiene = 0
  #   end
  # end

  def hygiene
    @hygiene
  end

  def happy?
    @happiness > 7? true : false
  end

  def clean?
    @hygiene > 7? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
     @hygiene += 4
     self.hygiene = @hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    @hygiene -= 3
    self.hygiene = @hygiene
    @happiness += 2
    self.happiness = @happiness
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    self.happiness = @happiness
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend,topic)
    if (topic == "politics")
      @happiness -= 2
      self.happiness = @happiness
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif (topic == "weather")
      @happiness += 1
      self.happiness = @happiness
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
