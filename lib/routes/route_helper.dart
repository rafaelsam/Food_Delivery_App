import 'package:food_app/pages/food_details.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/recommended_food.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String food_detail = "/food-detail";
  static const String recommended_food = "/recommended-detail";

  static String getInitial() => "/";
  static String getFoodDetail() => "$food_detail";
  static String getRecommendedFood() => "$recommended_food";

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => const HomePage()),
    GetPage(
        name: food_detail,
        page: () {
          return const FoodDetailPage();
        },
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 400)),
    GetPage(
        name: recommended_food,
        page: () {
          return const RecommendedFood();
        },
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 400)),
  ];
}
