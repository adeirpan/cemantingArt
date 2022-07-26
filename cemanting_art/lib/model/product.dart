class Product {
  String name;
  int price;
  String imageUrl;
  bool isWhishProduct;

  Product(
      {required this.name,
      required this.price,
      required this.imageUrl,
      this.isWhishProduct = false});
}
