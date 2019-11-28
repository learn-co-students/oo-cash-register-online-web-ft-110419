require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :price, :final_payment
  
  def initialize(discount = 0)
    @total = 0 
    @items = []
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @last_transaction = quantity * price
    @total +=  quantity * price
      if quantity > 1 
        counter = 0 
      while counter < quantity
        @items << item 
        counter += 1 
      end 
    else
      @items << item 
    end
  end
  
  def apply_discount
    if @discount > 0 
      @deduction = (price * discount)/100
      @total -= @deduction
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end 
  
  
end
