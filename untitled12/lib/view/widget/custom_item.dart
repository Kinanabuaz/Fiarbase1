import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllerr/item_controller.dart';
import '../../modle/item.dart';
import '../pages/update_item_screen.dart';

class CustomItem extends StatelessWidget {
  Item item;
  int index;

  CustomItem({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(item.id.toString()),
          Text(item.name),
          Text(item.des),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateItemScreen(
                        item: item,
                        index: index,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {
                  Provider.of<ItemController>(context, listen: false)
                      .deleteItem(
                    index: index,
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ],
          )
        ],
      ),
    );
  }
}