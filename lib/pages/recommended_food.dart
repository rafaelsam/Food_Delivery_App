import 'package:flutter/material.dart';
import 'package:food_app/routes/route_helper.dart';
import 'package:food_app/utils/app_icon.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/description_texts.dart';
import 'package:get/get.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: const AppIcons(
                    icon: Icons.clear,
                    backgroundColor: Color.fromARGB(255, 230, 222, 199),
                    color: Colors.black,
                  ),
                ),
                const AppIcons(
                  icon: Icons.shopping_cart_outlined,
                  backgroundColor: Color.fromARGB(255, 230, 222, 199),
                  color: Colors.black,
                )
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  // color:  Colors.white,
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimension.radius20),
                          topRight: Radius.circular(Dimension.radius20))),
                  child: Center(child: BigText(text: "From chinnese")),
                )),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: const Color.fromARGB(255, 235, 211, 79),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food3.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimension.width10, right: Dimension.width10),
                  child: const DescriptionText(
                      text:
                          "maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengi,maelezo mengimaelezo mengi"),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20 * 2.5,
              right: Dimension.width20 * 2.5,
              top: Dimension.width10 * 2.5,
              bottom: Dimension.width10 * 2.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcons(
                    icon: Icons.remove,
                    backgroundColor: Color.fromARGB(255, 163, 229, 199),
                    color: Colors.white),
                BigText(text: "\Tsh12k " + " X " + ' 0 '),
                const AppIcons(
                    icon: Icons.add,
                    backgroundColor: Color.fromARGB(255, 163, 229, 199),
                    color: Colors.white)
              ],
            ),
          ),
          Container(
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
                  child: const Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 161, 200, 191),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(Dimension.height120 / 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius20),
                        color: const Color.fromARGB(255, 161, 200, 191)),
                    child: BigText(
                      text: 'add to cart',
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
