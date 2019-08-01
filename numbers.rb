class Pum
  def initialize(number)
    @number = number
  end

  def call
    'pum' if (@number % 5).zero? && (@number % 5).zero?
  end
end


class Pim
  def initialize(number)
    @number = number
  end

  def call
    'pim' if  (@number % 3).zero?
  end
end

class Pam
  def initialize(number)
    @number = number
  end

  def call
    'pam' if (@number % 5 ).zero?
  end
end

class Callback
  def initialize(number)
    @number= number
  end

  def call
    @number
  end
end


class Game
  def initialize (number)
    @number = number
  end

  def call
  result = nil
  [Pim,Pam,Pum,Callback].each do |strategy|
  result = strategy.new(@number).call
  break unless result.nil?
  end
  result 
  end
end
 p (1..100).map { |n| Game.new(n).call }
