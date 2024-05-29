import "package:flutter/material.dart";

import "./product.dart";

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://pixabay.com/illustrations/flamingo-run-shoes-feathers-8749724/",
      name: "Product 1",
      price: 254,
    ),
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://pixabay.com/vectors/shoes-footwear-sneakers-fashion-153310/",
      name: "Product 2",
      price: 254,
    ),
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://pixabay.com/photos/oxford-shoes-leather-shoes-6078993/",
      name: "Product 3",
      price: 254,
    ),
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://pixabay.com/illustrations/shoes-footwear-pumps-fashion-heels-7809732/",
      name: "Product 4",
      price: 254,
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
