class Coinchanger

  def make_change(amount)
    coins = [25, 10, 5, 1]
    change = []

    coins.each do |coin|
      while amount >= coin
        change << coin
        amount -= coin
      end
    end

    change
  end

end