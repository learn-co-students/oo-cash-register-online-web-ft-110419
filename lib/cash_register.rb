require "pry"
class CashRegister
  attr_accessor :title, :price, :apply_discount
  attr_writer :total
  def initialize(title=nil,apply_discount=0)
    @total = 0

  end
  def add_item(title,price,quantity=1)
    @total = @total + @price*quantity
    @total
  end
  def apply_discount
      "There is no discount to apply."
  end
  def total
    @total
  end

end
