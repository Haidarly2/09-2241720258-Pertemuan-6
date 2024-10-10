class Item {
  String name;
  int price;
  String imageUrl;  // Atribut baru untuk foto
  int stock;        // Atribut baru untuk stok
  double rating;    // Atribut baru untuk rating

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}