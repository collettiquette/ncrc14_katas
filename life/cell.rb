class Cell
  attr_accessor :alive

  def initialize(is_alive)
    @alive = is_alive
  end

  def process_alive_count(neighbors)
    @alive_count = neighbors.count { |n| n.alive? }
  end

  def tick
    if @alive_count == 3
      @alive = true
    elsif @alive_count.between?(0,1)
      @alive = false
    elsif @alive_count > 3
      @alive = false
    end
  end

  def alive?
    @alive
  end

  def to_s
    @alive ? "x" : "."
  end

end
