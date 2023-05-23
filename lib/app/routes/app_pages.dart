import 'package:get/get.dart';
import '../bindings/contador_binding.dart';
import '../bindings/home_binding.dart';
import '../ui/pages/contador_page/contador_page.dart';
import '../ui/pages/home_page/home_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      transition: Transition.native,
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CONTADOR,
      page: () => const ContadorPage(),
      transition: Transition.native,
      binding: ContadorBinding(),
    ),
  ];
}
