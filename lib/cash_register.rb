require 'pry'

class CashRegister 
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount = 0)
    @total = @previous_total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    for i in 1..quantity do
      @total += price
      @@items << title
      @previous_total = price * quantity
    end
  end
  
  def apply_discount() 
    return "There is no discount to apply." if discount == 0
    @total = @total.to_f-(total.to_f * (discount/100.0))
    "After the discount, the total comes to $#{@total.to_i}."
  end
  
  def items() 
    @@items
  end
  
  def clear_items()
    self.items.clear
  end
  
  def void_last_transaction() 
    @total -= @previous_total
  end
  
end
