import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxcli/app/modules/home/controllers/home_controller.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: InputDecoration(
                labelText: "Product Name",
                hintText: "Input product in here...",
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () =>
                  Get.find<HomeController>().add(controller.name.text),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () =>
                  Get.find<HomeController>().add(controller.name.text),
              child: Text("Add Product"),
            ),
          ],
        ),
      ),
    );
  }
}
