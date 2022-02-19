import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/order.dart';
import 'package:shop/models/order_list.dart';

class OrdersPage extends StatelessWidget {
  //Refatorado para FutureBuilder o ProdutoPage esta dessa da forma initState.
  //caso queira fazer comparação dos modos.

  //bool _isLoading = true;
  // @override
  // void initState() {
  //   super.initState();

  //   Provider.of<OrderList>(
  //     context,
  //     listen: false,
  //   ).loadOrders().then((_) {
  //     setState(() => _isLoading = false);
  //   });
  // }

  Future<void> _refreshOrders(BuildContext context) {
    return Provider.of<OrderList>(
      context,
      listen: false,
    ).loadOrders();
  }

  @override
  Widget build(BuildContext context) {
    //refatorado para futureBuilder
    //final OrderList orders = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos'),
      ),
      drawer: AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () => _refreshOrders(context),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FutureBuilder(
            future: Provider.of<OrderList>(context, listen: false).loadOrders(),
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.error != null) {
                return Center(
                    child: Text('Occorreu sincronizando os Pedidos. '));
              } else {
                return Consumer<OrderList>(
                  builder: (ctx, orders, child) => ListView.builder(
                    itemCount: orders.itemsCount,
                    itemBuilder: (ctx, i) =>
                        OrderWidget(order: orders.items[i]),
                  ),
                );
              }
            },
          ),
        ),
      ),

      // body: _isLoading
      //     ? Center(child: CircularProgressIndicator())
      //     : ListView.builder(
      //         itemCount: orders.itemsCount,
      //         itemBuilder: (ctx, i) => OrderWidget(order: orders.items[i]),
      //       ),
    );
  }
}
