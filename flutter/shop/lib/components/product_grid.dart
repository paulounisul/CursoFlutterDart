import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/models/product.dart';
import 'package:shop/models/product_list.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.items;

    return GridView.builder(
      itemCount: loadedProducts.length,
      //Refatorando, é necessário utilizar o Singleton,
      //pra evitarr que em alguma instancia seja criado um novo
      //Objecto De ChangeNotifier.. create (passa para) Value.
      //e não passar a função apenas chamar loadedProduct.
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadedProducts[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
