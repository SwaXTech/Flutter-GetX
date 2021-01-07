import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        body: Center(
          child: Text(controller.counter.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: controller.increment,
        ),
      ),);
  }
}

