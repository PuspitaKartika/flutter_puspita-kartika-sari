class Book {
  final int id;
  final String judul;
  final String penerbit;
  final double harga;
  final String kategori;

  Book(this.id, this.judul, this.penerbit, this.harga, this.kategori);

  @override
  String toString() {
    return 'ID: $id, Judul: $judul, Penerbit: $penerbit, Harga: \$${harga.toStringAsFixed(2)}, Kategori: $kategori';
  }
}

class Bookstore {
  final List<Book> _books = [];

  void addBook(
      int id, String judul, String penerbit, double harga, String kategori) {
    final book = Book(id, judul, penerbit, harga, kategori);
    _books.add(book);
  }

  List<Book> getAllBooks() {
    return _books;
  }

  void removeBook(int id) {
    _books.removeWhere((book) => book.id == id);
  }
}

void main() {
  final bookstore = Bookstore();

  // Menambahkan buku ke toko buku
  bookstore.addBook(
      1, "Kamu tidak salah", "Penerbit haru", 10.99, "self improvement");
  bookstore.addBook(2, "psycology of money", "PT. Bentara Aksara Cahaya", 12.49,
      "non fictions");
  bookstore.addBook(
      3, "The Catcher in the Rye", "Little, Brown", 9.99, "Fiction");

  // Mendapatkan semua data buku
  final allBooks = bookstore.getAllBooks();
  print("Kumpulan buku : ");
  for (var book in allBooks) {
    print(book);
  }

  // Menghapus buku dengan ID 2
  bookstore.removeBook(2);

  // Mendapatkan data buku setelah penghapusan
  final updatedBooks = bookstore.getAllBooks();
  print("\nKumpulan buku terbaru");
  for (var book in updatedBooks) {
    print(book);
  }
}
