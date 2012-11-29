class Invoice
  attr_reader :number, :desc, :date
  
  def initialize(number, desc, date=Time.now())
    @number = number
    @desc = desc
    @date = date
    @items = []
    @total = 0
    @taxes = 0
    @quantity = 0
  end
  
  def add_item(item)
    @items << item
  end
  
  def generate
    puts "Invoice #{@number} - #{@date} - #{@desc}"
    
    @items.each do |item|
      @quantity += item.quantity
      @taxes += item.tax
      @total += item.subtotal
      puts item 
    end
    
    puts "#{@quantity} items. Total: $#{@total} Taxes: $#{@taxes}"
    puts "Gran total: $#{@total + @taxes}"
  end
end

class Item
  attr_reader :price, :tax, :subtotal, :quantity
  
  def initialize(name, quantity=1, price=0)
    @name = name
    @quantity = quantity
    @price = price.to_f
    @tax = price * @quantity * 0.16
    @subtotal = @price * @quantity
  end
  
  def to_s
    "#{@name} ....... #{@quantity} x $#{@price} = $#{@subtotal}"
  end
  
end

item1 = Item.new("Tomate", 20, 15.67)
item2 = Item.new("Cebolla", 10, 12.5)
item3 = Item.new("Cilantro",  1, 11)

factura = Invoice.new(1234, "Gracias por su compra")
factura.add_item(item1)
factura.add_item(item2)
factura.add_item(item3)

factura.generate


item1 = Item.new("Pizza", 1, 150.5)
item2 = Item.new("Coca-Cola", 4, 9.5)
item3 = Item.new("Apple Pie",  2, 25.4)

factura = Invoice.new(1235, "Gracias por su compra")
factura.add_item(item1)
factura.add_item(item2)
factura.add_item(item3)

factura.generate