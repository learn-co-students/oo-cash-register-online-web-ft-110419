require 'pry'

class CashRegister
  attr_accessor :total 
  attr_accessor :discount
  attr_accessor :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @items << {title: title, price: price, quantity: quantity}
    @total += quantity * price
  end
  
  def apply_discount
    @total = @total - @total * discount / 100
    if @discount != 0 
      message = "After the discount, the total comes to $800." 
    elsif @discount == 0
      message = "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @items[-1][:price]*@items[-1][:quantity]
  end 
  
  def items
    all_items = []
    @items.each do |item| 
      if item[:quantity] == 1
        all_items << item[:title]
      elsif item[:quantity] > 1
        item[:quantity].times {all_items << item[:title]}
      end
    end
    all_items
  end 
  
end 
