require 'pry'
class CashRegister
     attr_accessor :total,:discount
     
     def initialize(discount = 0)
      @total = 0
      @discount = discount
      @all_array = []
      @price =[]
      #binding.pry
     end
     def add_item(title,price,quantity = 1)
        @total+=price * quantity
         @quantity = quantity
         quantity.times do |i|
           @all_array.push(title) 
        #binding.pry
         end
         quantity.times do |i|
          @price.push(price)
         end
      end
        
      
     def apply_discount
         discount = @total * (@discount.to_f / 100)
         @total-=discount
         if discount != 0
        "After the discount, the total comes to $#{@total.to_i}."
      else 
        "There is no discount to apply."
       end
     end
     
     def items
      @all_array
      #binding.pry
  end
    def void_last_transaction
      @quantity.times {|i|@total-=@price.pop}
      @all_array.pop
    
    end
end
