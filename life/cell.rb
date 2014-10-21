class Cell
  attr_accessor :state

  def initialize(is_alive)
    @state = is_alive 
  end

  def process_alive_count(neighbors)
    @alive_count = neighbors.count { |n| n.alive? }
  end

  def tick
    if @alive_count == 3
      @state = true
    elsif @alive_count.between?(0,1)
      @state = false
    elsif @alive_count > 3
      @state = false
    end
  end

  def alive?
    @state
  end

  def to_s
    @state ? "x" : "."
  end

end
