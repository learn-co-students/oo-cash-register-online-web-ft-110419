class CashRegister
  attr_accessor :total, :discount, :items, :prices
  def initialize(discount = 0.0)
    @total = 0 
    @discount = discount
    @items = []
    @prices = []
  end 
  
  def add_item(item, price, quantity = 1)
    @total += price*quantity
    @prices << price*quantity
    quantity.times do 
      @items << item
    end
  end 
  
  def apply_discount
    if @discount != 0
      percent = 1 - @discount.to_f/100
      @total = @total * percent
      return "After the discount, the total comes to $#{@total.to_s.chomp(".0")}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total -= @prices[-1]
    @total
  end
end
