// ignore_for_file: avoid_print

import 'package:get/get.dart';
import '../routes/app_pages.dart';

class ContadorController extends GetxController {
  // variable no reactiva
  int numero1 = 0;

  // variable reactivo
  RxInt numero2 = 0.obs;

  @override
  void onInit() {
    print('ContadorController iniciado');
    super.onInit();
  }

  @override
  void onReady() {
    print('ContadorController listo');
    super.onReady();
  }

  @override
  void onClose() {
    print('ContadorController cerrado');
    super.onClose();
  }

  irAHome() {
    Get.toNamed(Routes.HOME);
  }

  incrementar1() {
    numero1++;
    update();
  }

  incrementar2() {
    numero2.value++;
    //! update(); no se necesita
  }
}
