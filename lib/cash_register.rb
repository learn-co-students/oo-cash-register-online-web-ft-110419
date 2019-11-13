class CashRegister

  attr_accessor :total, :discount, :items, :last_item

  def initialize(start = 0)
    @total = 0
    @discount = start
    @items = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    if quantity > 1
      quantity.times do
        @items << title
      end
    else
      @items << title
    end
    @last_item = price * quantity
  end

  def apply_discount
    disc = (@discount/100.0)
    @total = @total - (@total*disc)
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end

end
