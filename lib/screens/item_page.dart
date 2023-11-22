import 'package:aircane_legends/item_model.dart';
import 'package:aircane_legends/models/product.dart';
import 'package:aircane_legends/screens/shoplist_form.dart';
import 'package:flutter/material.dart';
import 'package:aircane_legends/widgets/left_drawer.dart';

class ItemListPage extends StatefulWidget {
  final Product product;

  const ItemListPage({Key? key, required this.product}) : super(key: key);
  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Items'),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Amount: ${widget.product.fields.amount}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Price: ${widget.product.fields.price}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Description: ${widget.product.fields.description}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to List'),
            ),
          ],
        ),
      ),
    );
  }
}
