class Test
  def largest_val(num)
   num.to_s.split('').sort.reverse.join('').to_i
  end
end

# puts Test.new.largest_val(869)
