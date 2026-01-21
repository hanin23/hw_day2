class Person {
  String name;
  String email;

  Person(this.name, this.email);
}

class Author extends Person {
  static int count = 1;
  int id = 0;
  Author(super.name, super.email) {
    id = count++;
  }
}

class Book {
  String name;
  String ISBN;
  int editionNumber;
  Author author;
  Book(this.name, this.ISBN, this.editionNumber, this.author);
}

class Customer extends Person {
  List<Book> bookList = [];
  Customer(super.name, super.email);

  void addBook(Book book) {
    bookList.add(book);
  }

  void printInformation() {
    print(" Customer name is $name , Customer email is $email");
    for (var book in bookList) {
      print(
        "Book name: ${book.name} ISBN: ${book.ISBN} edition: ${book.editionNumber} author: ${book.author.name} (id: ${book.author.id})",
      );
    }
  }
}

void main() {
  Author author1 = Author("sara", "sara578@email.com");
  Author author2 = Author("ali", "ali123@email.com");
  Author author3 = Author("ahmed", "ahmed235@email.com");

  Book book1 = Book("sara", "578", 645, author1);
  Book book2 = Book("ali", "123", 853, author2);
  Book book3 = Book("ahmed", "235", 245, author3);

  print(author1.id);
  print(author2.id);
  print(author3.id);

  Customer customer1 = Customer("sara", "sara578@email.com");

  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
}
