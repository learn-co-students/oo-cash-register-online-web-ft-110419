class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(start = 0)
    @total = 0
    @discount = start
    @items = []
  end
  
  def discount
    @discount
  end
  
  def add_item(title, price, quant=1)
    @total += (price*quant)
    if quant > 1 
      quant.times do
        @items << title
      end
    else
      @items << title
    end
    @last_transaction = price*quant
  end
  
  def apply_discount
    emp_dis = (discount/100.0)
    @total = @total - (@total*emp_dis)
    if @discount == 0 
      p "There is no discount to apply."
    else
      p "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  
  end
  
  
  
  
end
