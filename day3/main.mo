import Book "mo:book.mo";
import List "mo:base/List";
import Nat "mo:base/Nat";

actor {

    var myBook : Book = (0 : Nat , "Hello" : Text);
 
    public func create_book(pages : Nat, title : Text) : async Book {
         myBook := myBook(pages, title);
         return myBook;
  };
    public func nil<Book>() : List<Book> {

    };

    public func add_book(b : Book) {
            b.pop<Book>;
    };
    
    public func get_books() : async [Book] {
        return List.toArray<Book>(xs : List<Book>);
    };
}
