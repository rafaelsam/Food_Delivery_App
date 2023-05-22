import 'package:flutter/material.dart';
import 'package:food_app/Data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductLit => _popularProductList;

  int _itemCounts = 0;

  int get quantity => _itemCounts;

  final int _inCartItem = 0;

  int get inCartItem => _itemCounts + _inCartItem;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    }
  }

  void setQuantity(bool isIncreament) {
    if (isIncreament) {
      _itemCounts = checkQuantity(_itemCounts + 1);
    } else {
      _itemCounts = checkQuantity(_itemCounts - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Items Counts:", "You can't reduce more !",
          backgroundColor: const Color.fromARGB(255, 238, 77, 77),
          colorText: Colors.white);
      return 0;
    } else if (quantity > 10) {
      Get.snackbar("Items Counts:", "You can't add more !",
          backgroundColor: const Color.fromARGB(255, 238, 77, 77),
          colorText: Colors.white);
      return 10;
    } else {
      return quantity;
    }
  }

  void initProduct() {
    _itemCounts = 0;
  }
}
