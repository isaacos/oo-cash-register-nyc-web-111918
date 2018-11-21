class CashRegister
  
  attr_accessor :total, :items, :transaction
  attr_reader :discount
  
 
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = []
  end
  
 
  def add_item (title, price, quantity =1)
    self.total += price * quantity
    self.items.concat ([title] * quantity)
    self.transaction.push(price * quantity)
    
  end
  
  def apply_discount 
    
    if @discount == 0 
      return "There is no discount to apply."
    else
    @total -=  ( @total * (@discount / 100.0)).to_i
    
    return"After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= self.transaction[-1]
  end
end
