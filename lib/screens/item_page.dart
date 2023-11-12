import 'package:aircane_legends/item_model.dart';
import 'package:aircane_legends/screens/shoplist_form.dart';
import 'package:flutter/material.dart';
import 'package:aircane_legends/widgets/left_drawer.dart';

class ItemListPage extends StatefulWidget {
  @override
  _ItemListPageState createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'List of Items',
          ),
        ),
        backgroundColor: Color(0xFF004225),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          Item item = items[index];
          return Card(
            margin:
                EdgeInsets.all(8.0), // Margin untuk memberi jarak antar kotak
            child: ListTile(
              title: Text('Name: ${item.name}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount: ${item.amount}'),
                  Text('Description: ${item.description}'),
                ],
              ),
              onTap: () {
                // Fungsi saat item diklik
              },
            ),
          );
        },
      ),
    );
  }
}
