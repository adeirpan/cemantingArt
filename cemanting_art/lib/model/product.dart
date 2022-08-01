class Product {
  String name;
  double price;
  String imageUrl;
  bool isWhishProduct;
  int discount;

  Product(
      {required this.name,
      required this.price,
      required this.imageUrl,
      this.discount = 0,
      this.isWhishProduct = false});
}
