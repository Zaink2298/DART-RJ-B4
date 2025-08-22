import 'dart:io';

class Book {
  String id, title, author;
  int copies, available;
  Book(this.id, this.title, this.author, this.copies) : available = copies;
}

class User {
  String username, password;
  User(this.username, this.password);
}

class Library {
  List<Book> books = [];
  List<User> users = [User("admin", "1234")]; // default account

  void addBook(Book b) => books.add(b);

  void showBooks() {
    if (books.isEmpty) {
      print("📚 No books yet");
      return;
    }
    for (var b in books) {
      print("${b.id} | ${b.title} (${b.author}) "
          "| Total: ${b.copies}, Available: ${b.available}");
    }
  }

  void borrow(String id) {
    var book = books.firstWhere((b) => b.id == id, orElse: () => Book("", "", "", 0));
    if (book.id == "") {
      print("❌ Book not found");
    } else if (book.available > 0) {
      book.available--;
      print("👍 Borrowed: ${book.title}");
    } else {
      print("❌ No copies available");
    }
  }

  void returnBook(String id) {
    var book = books.firstWhere((b) => b.id == id, orElse: () => Book("", "", "", 0));
    if (book.id == "") {
      print("❌ Book not found");
    } else {
      book.available++;
      print("🔄 Returned: ${book.title}");
    }
  }

  User? login() {
    stdout.write("Username: ");
    var u = stdin.readLineSync()!;
    stdout.write("Password: ");
    var p = stdin.readLineSync()!;
    return users.firstWhere(
      (usr) => usr.username == u && usr.password == p,
      orElse: () => User("", ""),
    ).username.isEmpty ? null : users.firstWhere((usr) => usr.username == u);
  }
}

void main() {
  var lib = Library();
  print("=== Library System ===");
  print("Default login: admin / 1234\n");

  var user = lib.login();
  if (user == null) {
    print("❌ Login failed");
    return;
  }
  print("✅ Welcome ${user.username}");

  while (true) {
    print("\n--- Menu ---");
    print("1. Add Book");
    print("2. Show Books");
    print("3. Borrow Book");
    print("4. Return Book");
    print("0. Exit");
    stdout.write("Choice: ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("ID: "); var id = stdin.readLineSync()!;
        stdout.write("Title: "); var title = stdin.readLineSync()!;
        stdout.write("Author: "); var author = stdin.readLineSync()!;
        stdout.write("Copies: "); var c = int.parse(stdin.readLineSync()!);
        lib.addBook(Book(id, title, author, c));
        break;
      case "2": lib.showBooks(); break;
      case "3":
        stdout.write("Book ID: "); lib.borrow(stdin.readLineSync()!);
        break;
      case "4":
        stdout.write("Book ID: "); lib.returnBook(stdin.readLineSync()!);
        break;
      case "0": return;
      default: print("❌ Invalid choice");
    }
  }
}
