
class Book      
  
  attr_reader   :isbn 
  attr_accessor :price, :title, :author
  
  def initialize(isbn, title, author, price)
    @isbn  = isbn
    @author = author
    @title = title
    @price = Float(price)
  end  
  
  def to_s
  	"#{@isbn} - #{@title}by #{@authir}. Price #{@price}"
  end
end
