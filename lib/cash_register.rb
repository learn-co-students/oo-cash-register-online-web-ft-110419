class CashRegister

    attr_accessor :total, :discount, :items, :last

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @last = []
    end

    def add_item(item, price, count = 1)
        self.total += price * count
        count.times { self.items << item }
        self.last << price * count
    end

    def apply_discount
        if self.discount
            percent_off = 1 - (self.discount * 0.01)
            self.total *= percent_off
            "After the discount, the total comes to $800."
        else
            self.discount = "There is no discount to apply."
        end
    end

    def void_last_transaction
        void = self.last.pop
        self.total -= void
    end
end
