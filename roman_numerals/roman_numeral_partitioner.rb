class RomanNumeralPartitioner < Struct.new(:complete_numeral, :partition_numeral)
  
  def partition
    cleanup(partition_numerals)
  end

  private

  def partition_numerals
    complete_numeral.partition(/#{partition_numeral}*/)
  end

  def cleanup(partition_numerals)
    partition_numerals.delete("")
    partition_numerals
  end

end
