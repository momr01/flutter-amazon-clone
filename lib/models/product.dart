import 'dart:convert';

import 'package:amazon_clone_flutter/models/rating.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String name;
  final String description;
  final double price;
  final double quantity;
  final List<String> images;
  final String category;
  String? id;
  final List<Rating>? rating;
  //String? userId;
  Product({
    // this.userId,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.images,
    required this.category,
    this.id,
    this.rating,
  });
  //rating

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
      'images': images,
      'category': category,
      'id': id,
      'rating': rating,
      //  'userId': userId,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        name: map['name'] as String,
        description: map['description'] as String,
        //price: double.parse(map['price']) as double,
        //quantity: double.parse(map['quantity']) as double,
        price: map['price']?.toDouble() ?? 0.0,
        quantity: map['quantity']?.toDouble() ?? 0.0,
        //images: List<String>.from((map['images'] as List<String>)),
        images: List<String>.from(map['images']),
        category: map['category'] as String,
        id: map['_id'] != null ? map['_id'] as String : null,
        // userId: map['userId'] != null ? map['userId'] as String : null,
        rating: map['ratings'] != null
            ? List<Rating>.from(map['ratings']?.map((x) => Rating.fromMap(x)))
            : null);
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
  // Product.fromMap(json.decode(source));
}
