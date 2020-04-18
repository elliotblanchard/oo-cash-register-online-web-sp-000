class CashRegister
  attr_accessor :discount, :total
  @total
  @items

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title,price,quantity=1)
    @items << title
    @total += price*quantity
  end

end
