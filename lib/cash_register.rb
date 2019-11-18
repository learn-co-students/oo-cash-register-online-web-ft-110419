class CashRegister
  
  attr_accessor :total, :discount, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
    @trasanction = []
  end
  def add_item (title, price, quantity = 1)
    @total += price * quantity
    @trasanction << price
    i = quantity
    until i == 0 do 
      @item << title
      i -= 1
    end
  end
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (@discount * 0.01 * @total).to_i 
      "After the discount, the total comes to $#{self.total}."
    end
  end
  def items
    @item
  end
  def void_last_transaction
    self.total = @total - @trasanction.pop
    if @trasanction.size == 0 
      @total = 0.0
    end
  end
end
