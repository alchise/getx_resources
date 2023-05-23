// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/contador_controller.dart';

class ContadorPage extends GetView<ContadorController> {
  const ContadorPage({Key? key}) : super(key: key);
  final TextStyle estilo = const TextStyle(fontSize: 24);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>(
      builder: (_) {
        print('Redibujando todo');
        return Scaffold(
          appBar: AppBar(title: const Text('ContadorPage'), centerTitle: true),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${_.numero1}', style: estilo),
                const SizedBox(height: 20.0),
                Obx(() {
                  print('Redibujando solo valor numero1');
                  return Text('${_.numero2.value}', style: estilo);
                }),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => _.irAHome(),
                  child: const Text('Ir a Home'),
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  _.incrementar1();
                },
              ),
              const SizedBox(height: 20.0),
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  _.incrementar2();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
