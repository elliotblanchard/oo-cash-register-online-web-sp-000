class CashRegister
  attr_accessor :discount, :total
  @total
  @items

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title,price,quantity=1)
    @items << title
    @total += price*quantity
  end

  def apply_discount
    if @discount
        @total = @total*((100.0-@discount.to_f)/100.0)
        "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end
end
