class CashRegister

    attr_accessor :total, :discount, :items, :last_item
    
    def initialize(discount = 0)  
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_item = price * quantity
        self.total += (price * quantity)
        quantity.times {@items.push(title)}
    end

    def apply_discount
        if @discount != 0 
            disc = self.discount / 100.0
            self.total = self.total - (self.total * disc).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end

    end

    def void_last_transaction
        void = @items.pop(1)
        self.total -= self.last_item
    end






end

