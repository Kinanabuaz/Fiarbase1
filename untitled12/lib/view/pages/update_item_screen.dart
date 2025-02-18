import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllerr/item_controller.dart';
import '../../modle/item.dart';
import '../widget/input_widget.dart';


class UpdateItemScreen extends StatelessWidget {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController idTextEditingController = TextEditingController();
  TextEditingController desTextEditingController = TextEditingController();

  Item item;
  int index;

  UpdateItemScreen({required this.item, required this.index}) {
    nameTextEditingController.text = item.name;
    desTextEditingController.text = item.des;
    idTextEditingController.text = item.id.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            InputWidget(
              textEditingController: idTextEditingController,
              obscureText: false,
              prefixIcon: Icon(Icons.numbers),
              label: "Id",
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            InputWidget(
              textEditingController: nameTextEditingController,
              obscureText: false,
              prefixIcon: Icon(Icons.person),
              label: "Name", maxLines: null, keyboardType: null,
            ),
            SizedBox(height: 20),
            InputWidget(
              textEditingController: desTextEditingController,
              obscureText: false,
              prefixIcon: Icon(Icons.description),
              label: "Description",
              maxLines: null,
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Provider.of<ItemController>(context, listen: false).updateItem(
                  item: Item(
                    id: int.parse(idTextEditingController.text),
                    name: nameTextEditingController.text,
                    des: desTextEditingController.text,
                  ),
                  index: index,
                );
                Navigator.pop(context);
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}