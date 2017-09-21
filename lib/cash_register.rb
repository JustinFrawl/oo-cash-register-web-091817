require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items


  def initialize(discount=0.0, total=0)
    @total = total
    @discount =discount
    @items = []

  end
  def add_item(item, price, amount=1)
self.last_transaction = price * amount
    while amount > 0
      self.total += price
      self.items << item
      amount -=1

    end

  end

  def apply_discount
    if self.discount > 0
    x = self.discount / 100.0
    self.total = self.total - (self.total * x)
    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end
end
  def items
    @items

  end

 def void_last_transaction

  self.total = self.total - self.last_transaction
 end
end
