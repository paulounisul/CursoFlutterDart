import 'package:flutter/material.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({Key? key}) : super(key: key);

  @override
  _ProductFormPageState createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  @override
  Widget build(BuildContext context) {
    final _priceFocus = FocusNode();

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                textInputAction: TextInputAction.next,
                //quando precisar solicitar o focus em um determinado
                //elemento do form.
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocus);
                },
              ),
              TextFormField(
                  decoration: InputDecoration(labelText: 'Preço'),
                  textInputAction: TextInputAction.next,
                  //usar numberWidhOption. pois no iOs. o teclado virá sem o ponto.
                  focusNode: _priceFocus,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
