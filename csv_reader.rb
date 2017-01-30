require_relative 'book'

class CsvReader

  def initialize(data_file)
      @data_file = data_file
      @books_in_stock = {}  # empty Hash
  end 

  def loadData
      File.foreach(@data_file) do |line|
          content = line.chomp.split(",")
          book = Book.new(content[0],content[1], content[3], content[2])
          @books_in_stock[book.isbn] =  book
      end
    end  

    def isbnSearch isbn
       @books_in_stock[isbn]
    end 

    def authorSearch(name)
       matches = []
       @books_in_stock.each do |isbn, book|
         if book.author == name
            matches << book
         end
       end
       matches
     end

    def titleSearch(name)
       matches_t = []
       @books_in_stock.each do |isbn, book|
         if book.title == name
            matches_t << book
         end
       end
       matches_t
     end
     
    def priceSearch(limit)
       matches_p = []
       @books_in_stock.each do |isbn, book|
         if book.price < limit
            matches_p << book
         end
       end
       matches_p
     end
end 