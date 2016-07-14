# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    self.members.push(person)
  end

  def leave(person)
    if self.members.delete(person)
      return nil
    end
  end

  def front
    self.members[0]
  end

  def middle
    if self.members.length % 2 == 0
      element = (self.members.length / 2)
      return self.members[element]
    elsif self.members.length % 2 != 0
        second_element = (self.members.length + 1) / 2
        return second_element
    end
  end

  def back
    return self.members.last
  end

  def search(person)
    self.members.each do |member|
      return person if member == person
    end
    nil
  end

  private

  def index(person)
  end

end
