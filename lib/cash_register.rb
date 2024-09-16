require "pry"
class CashRegister
  attr_accessor :total ,:discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all_items=[]
    @prices=[]
  end
  def add_item(title,price,quantity=1)
    @total += price * quantity
    @quantity=quantity
    quantity.times do |i|
      @all_items.push(title)
    end
    quantity.times do |i|
      @prices.push(price)
    end
  end
  def apply_discount
      discount = @total * (@discount.to_f/100)
        @total-=discount
        if discount !=0
          "After the discount, the total comes to $#{@total.to_i}."
        else
      "There is no discount to apply."
    end
  end
  def items

    @all_items
  end
  def void_last_transaction
    @quantity.times { |i| @total-=@prices.pop}
      @all_items.pop

  end
  def tlotal
    @total
  end

end
