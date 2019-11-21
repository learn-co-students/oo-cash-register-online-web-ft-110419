require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  # initializes total, discount & items at creation of class instance cash register
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  # method to add items to cash register
  def add_item(string, float, integer = 1)
    # adds item price to total
    @total += float * integer
    # accepts an optional quantity of the item
    quantity = integer
    # loops to add item multiple times to the list 
    quantity.times {@items << string}
    # holds the amount of the last transaction
    self.last_transaction = float * quantity
  end
  
  # method to apply the discount to total
  def apply_discount
    # conditional to check if there's a discount
    if discount > 0
      @total -= @total * (discount / 100.0).to_f
      #gets rid of trailing zeros 
      total = @total.to_s.sub(/\.?0+$/, '')
       return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= self.last_transaction
  end
  
  
  
  
  
end
