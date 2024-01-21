def stock_picker(days)

  data = []
  buy_date = []
  sell_date = []
  best_date = []
  buy_sell_output = []

  i = 0
  until i == days.length-1 do
    data.push(days[i..days.length])
    i += 1
  end
  
  data.map do |array|
    sell_date.push(array[1..-1].max)
    buy_date.push(array[0])
  end

  combination = sell_date.zip(buy_date)
  index_nr = combination.map do |index|
    index[0] - index[1]
  end

  best_date = combination[index_nr.index(index_nr.max)].reverse
  p buy_sell_output += [days.index(best_date[0]), days.index(best_date[1])]

end

stock_picker([2,3,6,9,15,5,6,2,1])

