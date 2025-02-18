import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllerr/item_controller.dart';
import '../widget/custom_item.dart';
import 'add_item_screen.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ItemController>(
        builder: (context, itemController, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return CustomItem(
                index: index,
                item: itemController.listItem[index],
              );
            },
            itemCount: itemController.listItem.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddItemScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}