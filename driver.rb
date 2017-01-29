require_relative 'csv_reader'

data_source = CsvReader.new(ARGV[0])
data_source.loadData

print "ISBN Search - Enter an ISBN? "   
isbn = STDIN.gets.chomp  
puts  data_source.isbnSearch isbn

print "Author Search - Enter a name? "  
name = STDIN.gets.chomp
puts
books = data_source.authorSearch(name)
puts 'No matches' if books.empty?
books.each {|bk| puts "#{bk.isbn} - #{bk.title}" } 