class CashRegister
  attr_accessor :discount, :total
  attr_reader :items

  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    qty_added = 0
    while qty_added < quantity
      @items << title
      qty_added += 1
    end

    @last_item = {
      title: title,
      price: price
    }

    @total += price * quantity
    @total
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0

    @total = (@total - (@total * (@discount * 0.01))).to_i
    "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @items = @items.filter {|i| i != @last_item[:title] }
    @total -= @last_item[:price]

    @total = 0.0 if @items.length == 0
  end
end
