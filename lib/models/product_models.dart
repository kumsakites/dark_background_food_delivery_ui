class Product {
  final String name;
  final double price;
  final String imageUrl;
  const Product(
      {required this.name, required this.price, required this.imageUrl});

  static const List<Product> product = [ Product(name: 'Buger', price: 7.5, imageUrl: 'images/burgerb.png')];
}
