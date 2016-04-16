def add_binary(a, b)

  e = ""
    if a.size > b.size
      @c = a.reverse
      @d = b.reverse

    else
      @c = b.reverse
      @d = a.reverse
    end

    (0..@c.size-1).each do |i|
        #puts "#{i} / [#{@c[i]} , #{@d[i]} ] = #{@c[i].to_i + @d[i].to_i}"
        target = (e[i].to_i + @c[i].to_i + @d[i].to_i)
        case target
        when 2
          e[i] = '0'
          e[i+1] = (e[i+1].to_i + 1).to_s
        when 3
          e[i] = '1'
          e[i+1] = (e[i+1].to_i + 1).to_s
        else
          e[i] = (e[i].to_i + @c[i].to_i + @d[i].to_i).to_s
        end
    end

  result = e.reverse
  return result
end

puts "test case1: #{add_binary("1101","110")} "
puts "test case2: #{add_binary("11","1")} "
puts "test case3: #{add_binary("1111","1111")} "
