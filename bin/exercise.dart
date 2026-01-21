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

