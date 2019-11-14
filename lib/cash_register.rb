require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title,price,quantity=1)  
    quantity.times { @items << [title,(price * quantity)] }
    @total += (price * quantity)
  end
  
  def apply_discount
    @total -= self.total * (self.discount.to_f / 100)
    discount_success = "After the discount, the total comes to $"
    discount_failure = "There is no discount to apply."
    self.total != 0 ?  "#{discount_success}#{@total.to_i}." : discount_failure
  end
  
  def items
    @items.map {|item| item.first}
  end
  
  def void_last_transaction
    last_item = @items.pop
    last_item_total_price = last_item.last
    @total -= last_item_total_price
    @items.delete_if {|item| item.first == last_item.first}
  end
  
end