require 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :void_last_transaction
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title,price, quantity=1)
    @total += price*quantity
    quantity.times do 
      @items.push(title)
    end
  end
  
  def apply_discount 
     @total -= (@total*(@discount/100.00)).to_i
     @total != (@total*(@discount/100.00)).to_i ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
  end 
  
  def items
    @items
  end 
  def void_last_transaction
    
  end 
end 
