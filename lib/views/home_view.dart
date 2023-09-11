import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFFFCC70),
              title: Text("Első appom"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ),
            body: Center( child: Text(controller.true_or_false.toString(), style: TextStyle(fontSize: 50))),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color(0xFFFFCC70),
              onPressed: () {
                controller.changeBool();
              },
              child: Icon(Icons.restore_sharp),
            ),
          );
        });
  }
}
