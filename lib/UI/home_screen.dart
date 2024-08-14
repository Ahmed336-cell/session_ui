import 'package:flutter/material.dart';

import '../model/product.dart';
import 'details_screen.dart';
List<Product> products = [
  Product(
    imageUrl: 'assets/apple.jpg',
    title: 'Apple',
    price: 4.99,
    quantity: 2,
    description: 'A sweet red apple',
  ),
  Product(
    imageUrl: 'assets/banana.jpg',
    title: 'Banana',
    price: 2.99,
    quantity: 6,
    description: 'A bunch of ripe bananas',
  ),
  Product(
    imageUrl: 'assets/orange.jpg',
    title: 'Orange',
    price: 3.99,
    quantity: 4,
    description: 'A juicy orange',
  ),
  Product(
    imageUrl: 'assets/grapps.png',
    title: 'Grapes',
    price: 5.99,
    quantity: 1,
    description: 'A bunch of sweet grapes',
  ),
  Product(
    imageUrl: 'assets/Strawberry.png',
    title: 'Strawberry',
    price: 6.99,
    quantity: 12,
    description: 'A pack of fresh strawberries',
  ),
  Product(
    imageUrl: 'assets/Watermelon.png',
    title: 'Watermelon',
    price: 7.99,
    quantity: 1,
    description: 'A large watermelon',
  ),
  Product(
    imageUrl: 'assets/mango.png',
    title: 'Mango',
    price: 3.49,
    quantity: 3,
    description: 'A ripe mango',
  ),

  Product(
    imageUrl: 'assets/Pineapple.png',
    title: 'Pineapple',
    price: 5.49,
    quantity: 1,
    description: 'A fresh pineapple',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black ,
      title: const Text("Home Screen" ,
        style: TextStyle(
        color: Colors.white,
          fontWeight: FontWeight.bold
      ),
      ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: products[index]),
                ),
              );
            },
            leading: Image.asset(products[index].imageUrl,
            width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),

            title: Text(products[index].title ,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Text('\$${products[index].price.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),
            ),
          );
        },
      )
      ,
    );
  }
}
