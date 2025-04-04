=begin
Finish the method definition below.

The parameter books_record is an array of hashes, each of which contains three fields, book, borrower and date.

Given a books_record array and a borrower string, the method should return a string like <Borrower Name> borrowed <book name> on <date>, if the borrower has borrowed a book. If not, the function should return No books borrowed.
=end

def get_borrower(books_record, borrower)
  record = books_record.find { |book| book[:borrower] == borrower }
  record ? "#{borrower} borrowed #{record[:book]} on #{record[:date]}" : "No books borrowed"
end

# def get_borrower(books_record, borrower)
#   borrowed_books = books_record.map do |book|
#     if borrower == book[:borrower]
#       "#{borrower} borrowed #{book[:book]} on #{book[:date]}"
#     else
#       nil
#     end
#   end
  
#   borrowed_books.compact.first || "No books borrowed"
# end

borrowed_books = [
  {
    book: "Invisible Man",
    borrower: "oliver_smith",
    date: "10-May-2021",
  },
  {
    book: "The Boy Who Harnessed the Wind",
    borrower: "anna_smith",
    date: "16-March-2021",
  },
  {
    book: "The Book Thief",
    borrower: "sam_smith",
    date: "21-April-2020",
  }
]
user_name = "oliver_smith"

puts get_borrower(borrowed_books, user_name)