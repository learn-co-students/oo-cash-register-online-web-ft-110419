require 'pry'
#learn spec/cash_register_spec.rb --fail-fast
class CashRegister

attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
  self.total += price*quantity
  self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.discount = self.discount/100.to_f
      self.total = self.total - (self.total * self.discount)
      "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
    end
  end

  def void_last_transaction
self.total -= @last_transaction
  end

end
