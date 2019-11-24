class CashRegister
    attr_accessor :total 
  def initialize(discount = 0) 
      discount = @discount
  end
  
  def discount
    self.total/discount * 100
  end
end