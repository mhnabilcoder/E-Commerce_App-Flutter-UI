
import 'package:ecommerce/ui/components/product.dart';
import 'package:flutter/material.dart';

class ProductsRecomendationContainerBOx extends StatelessWidget {
  const ProductsRecomendationContainerBOx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 1050,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Row(
              children: [
                ProductContainer(),
                ProductContainer(),
              ],
            ),
            Row(
              children: [
                ProductContainer(),
                ProductContainer(),
              ],
            ),
            Row(
              children: [
                ProductContainer(),
                ProductContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

