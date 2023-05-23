import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage'), centerTitle: true),
      body: SafeArea(
        /* ****** SOLO SE REDIBUJA ESTA AREA ****** */
        child: GetBuilder<HomeController>(
          builder: (_) {
            return Center(
              child: ElevatedButton(
                onPressed: () => _.irAContador(),
                child: const Text('ir a Contador'),
              ),
            );
          },
        ),
        /* ****** SOLO SE REDIBUJA ESTA AREA ****** */
      ),
    );
  }
}
