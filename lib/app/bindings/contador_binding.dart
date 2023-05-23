
import 'package:get/get.dart';
import '../controllers/contador_controller.dart';


class ContadorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContadorController>(() => ContadorController());
  }
}