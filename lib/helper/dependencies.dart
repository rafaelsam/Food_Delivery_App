import 'package:food_app/Data/api/api_client.dart';
import 'package:food_app/Data/repository/cart_repo.dart';
import 'package:food_app/Data/repository/popular_product_repo.dart';
import 'package:food_app/controllers/cart_controller.dart';
import 'package:food_app/controllers/popular_pro_controller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // load api client dependencies
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://www.rjs.com'));

  // load repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  // load controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
