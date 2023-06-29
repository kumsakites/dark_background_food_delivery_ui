import 'package:flutter/material.dart';

import '../models/product_models.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: Product.product.length,
          itemBuilder: ((BuildContext context, int index) {
            return CatalogProductCard(index: index);
          })),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final int index;
  CatalogProductCard({required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(Product.product[index].imageUrl),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(child: Text(Product.product[index].name)),
          Expanded(child: Text('${Product.product[index].price}')),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}
