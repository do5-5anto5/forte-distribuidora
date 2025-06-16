class Product {
  Product({
    required this.name,
    required this.image,
    required this.description,
    required this.category,
  });

  final String name;
  final String image;
  final String description;
  final String category;
}

enum Category {
  sheet,
  metalFraming,
  tape,
  screws,
  jointCompound
}