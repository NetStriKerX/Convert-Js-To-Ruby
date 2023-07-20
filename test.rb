class Test

  def largest_val(num)
   num.to_s.split('').sort.reverse.join('').to_i
  end

  def count_visible_nodes(t)
    @count = 0
    @max_val = -Float::INFINITY
    def counter(t,max_so_far)
      if t == nil
        return
      end

      if t[:val] > max_so_far
        @count +=1
        max_so_far = t[:val]
      end

      counter(t[:left],max_so_far)
      counter(t[:right],max_so_far)
    end

    counter(t,@max_val)
    @count
  end

  def longest_possible_string(a,b,c)
    unsort = [{char: 'a',quantity: a},{char: 'b',quantity: b},{char:'c',quantity: c}]
    sorted = unsort.sort_by {|x| -x[:quantity]}
    # puts sorted
    max = sorted[0]
    med = sorted[1]
    min = sorted[2]
    length = a+b+c
    ans = []
    for i in 0..length do
      if i > 1
        last_two_char = "#{ans[i-2]}#{ans[i-1]}"
      end
      # puts last_two_char
      if last_two_char != max[:char]+max[:char] && max[:quantity] > 0
        ans << max[:char]
        max[:quantity] -= 1
      elsif last_two_char != med[:char]+med[:char] && med[:quantity] > 0
        ans << med[:char]
        med[:quantity] -= 1
      elsif last_two_char != min[:char]+min[:char] && min[:quantity] > 0
        ans << min[:char]
        min[:quantity] -= 1
      else
        return ans.join('')
      end
    end
    return ans.join('')
  end
end


puts Test.new.longest_possible_string(1,8,4)

