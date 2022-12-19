import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments! as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(product[0]),
      ),
      body: Container(),
    );
  }
}
