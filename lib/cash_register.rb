class CashRegister
    attr_accessor :discount, :items, :price, :total, :quantity
    
    
    def initialize(discount = 0)
        @items = []
        @discount = discount
        @total = 0
    end
   
    def add_item(title, price,quantity = 1)
        if quantity > 1
            i = 0
            while i < quantity
                @items << title
                i += 1
            end
        else
            @items << title
        end
        @total += (price * quantity)
        @price = price
        @total
        @quantity = quantity
    end
    def apply_discount()
        if @discount > 0
          @discount = @discount/100.to_f
          @total = @total - (@total * (@discount))
          "After the discount, the total comes to $#{@total.to_i}."
        else
          "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @price * @quantity
    end


end