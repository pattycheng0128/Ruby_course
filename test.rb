def pick(list)
  result = []
  list.each do |i|
    if yield(i)
      result.append(i)
    end
  end
  return result
end