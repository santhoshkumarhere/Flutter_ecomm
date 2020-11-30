import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // ProductDetailScreen(this.title);

  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    final productsData = Provider.of<Products>(context, listen: false).findById(
        productId); //if listen false, then this widget will not rebuld if product list change
    return Scaffold(
      appBar: AppBar(
        title: Text(productsData.title),
      ),
    );
  }
}
