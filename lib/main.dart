import 'package:flutter/material.dart';
import 'package:provider_example/screens/product_detail.dart';
import 'package:provider_example/screens/product_overview.dart';
import 'package:provider_example/utlis/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductOverviewScreen(),
      routes: {productdetails: (context) => const ProductDetail(),
      },
    );
  }
}
