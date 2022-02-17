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
    title: "Giày Nike Pro",
    price: 1000000,
    description: description,
    rating: 4.8,
  ),
  Product(
    id: 2,
    image: "assets/images/shoe2.png",
    title: "Giày Thể Thao",
    price: 1500000,
    description: description,
    rating: 4.1,
  ),
  Product(
    id: 3,
    image: "assets/images/shoe3.png",
    title: "Giày Supper Pro",
    price: 500000,
    description: description,
    rating: 4.0,
  ),
  Product(
    id: 4,
    image: "assets/images/shoe4.png",
    title: "Giày Thể Thao Pro",
    price: 2000000,
    description: description,
    rating: 4.1,
  ),
];

const String description =
    "Hãy thỏa sức diện đẹp với những đôi giày cực kì thời trang và xu hướng.";
