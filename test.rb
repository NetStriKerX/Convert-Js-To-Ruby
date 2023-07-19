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
end
