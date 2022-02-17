import 'package:flutter/material.dart';

class Product {
  final int id, price;
  final String title, description, image;
  final double rating;

  Product({
    required this.id,
    required this.image,
    this.rating = 0.0,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our shop Products

List<Product> foodProducts = [
  Product(
    id: 1,
    image: 'assets/images/shoe1.png',
    title: "Giày sneaker",
    price: 10000,
    description: description,
    rating: 4.8,
  ),
  Product(
    id: 2,
    image: "assets/images/chicken.png",
    title: "Thịt gà",
    price: 15000,
    description: description,
    rating: 4.1,
  ),
  Product(
    id: 3,
    image: "assets/images/sea_food.png",
    title: "Hải sản",
    price: 5000,
    description: description,
    rating: 4.0,
  ),
  Product(
    id: 4,
    image: "assets/images/fish.png",
    title: "Cá",
    price: 20000,
    description: description,
    rating: 4.1,
  ),
  Product(
    id: 5,
    image: "assets/images/soup.png",
    title: "Soup",
    price: 12000,
    description: description,
    rating: 4.2,
  ),
  Product(
    id: 6,
    image: "assets/images/light_food.png",
    title: "Đồ ăn nhẹ",
    price: 4000,
    description: description,
    rating: 4.5,
  ),
];

const String description =
    "Hãy thỏa sức diện đẹp với những đôi giày cực kì thời trang và xu hướng.";
