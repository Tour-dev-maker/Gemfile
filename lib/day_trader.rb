def day_trader(array)
  gain = 0
  for i in (0...array.length)
    price_buy = array[i]
    for j in (i...array.length)
      price_sell = array[j]
      if price_sell - price_buy > gain
        day_buy = i
        day_sell = j
        gain = price_sell - price_buy
      end
    end
  end
  return Array.new([day_buy,day_sell])
end
