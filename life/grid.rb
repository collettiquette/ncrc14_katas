class Grid

  def initialize(cell)
    @cells = Array.new(35) do 
      Array.new(100) do 
        cell.new([true,false].sample)
      end
    end
  end

  def tick
    @cells.each_with_index do |row,i|
      row.each_with_index do |cell,j|
        neighbors = @cells[(i-1)..(i+1)].flat_map { |r| r[((j-1)..(j+1))] }
        neighbors.delete(cell)
        cell.process_alive_count(neighbors)
      end
    end

    @cells.each { |r| r.each { |c| c.tick } }
  end

  def display
    @cells.each do |row|
      row.each do |cell|
        print cell.to_s
      end
      print "\n"
    end
  end
end
