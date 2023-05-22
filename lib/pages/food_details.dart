import 'package:flutter/material.dart';
import 'package:food_app/controllers/popular_pro_controller.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/utils/app_icon.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/description_texts.dart';
import 'package:get/get.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().initProduct();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.imageSizeFoodDetails,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/food3.png'),
                  ),
                  color: Color.fromARGB(255, 235, 211, 79),
                ),
              )),
          Positioned(
              top: Dimension.iconTop,
              left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const HomePage());
                    },
                    child: const AppIcons(
                      icon: Icons.arrow_back,
                      color: Colors.black,
                      backgroundColor: Color.fromARGB(255, 230, 222, 199),
                    ),
                  ),
                  const AppIcons(
                    icon: Icons.shopping_cart,
                    color: Colors.black,
                    backgroundColor: Color.fromARGB(255, 230, 222, 199),
                  )
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimension.imageSizeFoodDetails - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                      top: Dimension.height10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimension.radius20),
                        topLeft: Radius.circular(Dimension.radius20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: 'Burger',
                      ),
                      SizedBox(
                        height: Dimension.height10,
                      ),
                      BigText(text: 'Introduce'),
                      SizedBox(
                        height: Dimension.height10,
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: DescriptionText(
                              text:
                                  'maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi'),
                        ),
                      )
                    ],
                  ))),
        ]),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: (popularProduct) {
            return Container(
              height: Dimension.height120,
              padding: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  top: Dimension.height18,
                  bottom: Dimension.height18),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 239, 239),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.radius20),
                      topRight: Radius.circular(Dimension.radius20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimension.height120 / 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              popularProduct.setQuantity(false);
                            },
                            child: const Icon(Icons.remove)),
                        SizedBox(
                          width: Dimension.width10,
                        ),
                        BigText(text: popularProduct.quantity.toString()),
                        SizedBox(
                          width: Dimension.width10,
                        ),
                        GestureDetector(
                            onTap: () => {popularProduct.setQuantity(true)},
                            child: const Icon(Icons.add))
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(Dimension.height120 / 10),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius20),
                          color: const Color.fromARGB(255, 161, 200, 191)),
                      child: BigText(
                        text: 'add to cart',
                        color: Colors.white,
                      ))
                ],
              ),
            );
          },
        ));
  }
}
