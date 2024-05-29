import "package:flutter/material.dart";

import "./product.dart";

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://cdn.pixabay.com/photo/2024/05/09/04/11/flamingo-8749724_1280.jpg",
      name: "Product 1",
      price: 254,
    ),
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://cdn.pixabay.com/photo/2013/07/12/18/20/shoes-153310_1280.png",
      name: "Product 2",
      price: 254,
    ),
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://cdn.pixabay.com/photo/2021/03/08/12/31/oxford-shoes-6078993_1280.jpg",
      name: "Product 3",
      price: 254,
    ),
    const Product(
      description: "A image of hown here in the pic",
      imagePath:
          "https://cdn.pixabay.com/photo/2023/02/23/22/45/shoes-7809732_1280.png",
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
