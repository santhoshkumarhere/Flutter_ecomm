import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // no of elem
        childAspectRatio: 3 / 2, //height more than width
        crossAxisSpacing: 10, //space between columns
        mainAxisSpacing: 10, //space between rows
      ), //grid structure
      itemBuilder: (ctx, index) => ProductItem(
          products[index].id, products[index].title, products[index].imageUrl),
    );
  }
}
