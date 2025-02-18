import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllerr/item_controller.dart';
import '../../modle/item.dart';
import '../widget/input_widget.dart';



class AddItemScreen extends StatelessWidget {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController idTextEditingController = TextEditingController();
  TextEditingController desTextEditingController = TextEditingController();

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
              label: "Name",
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
                Provider.of<ItemController>(context, listen: false).addItem(
                  item: Item(
                    id: int.parse(idTextEditingController.text),
                    name: nameTextEditingController.text,
                    des: desTextEditingController.text,
                  ),
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