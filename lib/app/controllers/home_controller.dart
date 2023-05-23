// ignore_for_file: avoid_print

import 'package:get/get.dart';
import '../routes/app_pages.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    print('HomeController Iniciado');
    super.onInit();
  }

  @override
  void onReady() {
    print('HomeController listo');
    super.onReady();
  }

  @override
  void onClose() {
    print('HomeController cerrado');
    super.onClose();
  }

  irAContador() {
    Get.toNamed(Routes.CONTADOR);
  }
}
