import 'package:flutter/material.dart';
import '../models/product.dart';

const List<MapEntry<String,IconData>> categories = [
  MapEntry('Electronics', Icons.devices),
  MapEntry('Fashion', Icons.checkroom),
  MapEntry('Shoes', Icons.ice_skating),
  MapEntry('Beauty', Icons.face_retouching_natural),
  MapEntry('Accessories', Icons.watch),
  MapEntry('Home', Icons.chair),
];

const List<Map<String,String>> banners =[
  {'title': 'Summer Sale -Up to 50% off', 'image' : 'assets/image/banners/banner1.jpg'},
  {'title': 'New Arrivals', 'image': 'assets/image/banners/banner2.jpg'},
  {'title': 'Electronics Discount', 'image':'assets/image/banners/banner3.jpg'},
];

final List<Product> products =[
  Product(
    name : 'iphone',
    category: 'Electronics',
    image:'assets/image/products/iphone.png',
    price: 120000,
    rating:4.8,
    badge: 'New',
    description: 'Latest smartphone with a stunning display, fast performance and a powerful camera.'
  ),
  Product(
      name : 'Wireless Headphones',
      category: 'Electronics',
      image:'assets/image/products/headphone.png',
      price: 3500,
      rating:4.5,
      badge: '-20%',
      description: 'Wireless headphones with high-quality sound and noise reduction.',
  ),
  Product(
    name : 'Laptop',
    category: 'Electronics',
    image:'assets/image/products/laptop.png',
    price: 95000,
    rating:4.6,
    badge: '-20%',
    description: 'Lightweight laptop with fast SSD storage and all-day battery life.',
  ),

  Product(
    name : 'Smart Watch',
    category: 'Accessories',
    image:'assets/image/products/watch.png',
    price: 6500,
    rating:4.3,
    badge: 'SALE',
    description: 'Track your steps, heart rate and notification right from your wrist.',
  ),
  Product(
  name : 'Backpack',
  category: 'Accessories',
  image:'assets/image/products/backpack.png',
  price: 2500,
  rating:4.4,
  description: 'Spacious water-resistant backpack, perfect for college and travel.',
  ),
  Product(
    name: 'Sneakers',
    category: 'Shoes',
    image: 'assets/image/products/sneakers.png',
    price: 3800,
    rating: 4.7,
    badge: '-15%',
    description: 'Comfortable sneakers with a cushioned sole for daily wear.',
  ),
  Product(
    name: 'T-Shirt',
    category: 'Fashion',
    image: 'assets/image/products/t-shirt.png',
    price: 900,
    rating: 4.2,
    badge: 'NEW',
    description: '100% cotton, breathable and comfortable everyday T-shirt.',
  ),
  Product(
    name: 'Face Cream',
    category: 'Beauty',
    image: 'assets/image/products/facecream.png',
    price: 1200,
    rating: 4.0,
    description: 'Moisturising face cream suitable for all skin types.',
  ),
  Product(
    name: 'Table Lamp',
    category: 'Home',
    image: 'assets/image/products/lamp.png',
    price: 1500,
    rating: 4.3,
    description: 'Modern LED table lamp with adjustable brightness.',
  ),
];