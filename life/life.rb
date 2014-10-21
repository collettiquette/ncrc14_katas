$LOAD_PATH << File.dirname(__FILE__)
require 'grid.rb'
require 'cell.rb'

life = Grid.new
loop do
  life.display
  sleep(0.1)
  life.tick
end
