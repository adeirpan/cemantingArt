class Product {
  String name;
  double price;
  String imageUrl;
  bool isWhishProduct;
  double discount;

  Product(
      {required this.name,
      required this.price,
      required this.imageUrl,
      required this.discount,
      this.isWhishProduct = false});
}
