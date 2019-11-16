require 'pry'
class CashRegister
  
  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << item}
    @last_transaction = price * quantity
  end

  def apply_discount
    @total -= (@total * (@discount.to_f / 100)).to_i
    @total != 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
  end

  def void_last_transaction
    @total -= @last_transaction
  end


end
