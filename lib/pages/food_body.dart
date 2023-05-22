import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/food_details.dart';
import 'package:food_app/routes/route_helper.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/icon_and_text.dart';
import 'package:food_app/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodBody extends StatefulWidget {
  const FoodBody({super.key});

  @override
  State<FoodBody> createState() => _FoodBodyState();
}

class _FoodBodyState extends State<FoodBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          height: Dimension.pageView,
          child: GestureDetector(
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildItemPage(position);
                }),
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: const Color.fromARGB(255, 180, 216, 205),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimension.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: 'Recommended',
                color: Colors.black87,
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              Container(
                  margin: const EdgeInsets.all(1),
                  child: BigText(
                    text: '.',
                    color: Colors.black26,
                  )),
              SizedBox(
                height: Dimension.height10,
              ),
              Container(
                  margin: const EdgeInsets.all(1),
                  child: SmallText(text: 'food pairing'))
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
              onTap: (){
                 Get.toNamed(RouteHelper.getRecommendedFood());
              },
                child: Container(
                  margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width10,
                      bottom: Dimension.height10),
                  child: Row(
                    children: [
                      Container(
                        height: Dimension.height120,
                        width: Dimension.width120,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius20),
                            color: const Color.fromARGB(255, 235, 211, 79),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/food2.png'))),
                      ),
                      Expanded(
                        child: Container(
                          height: Dimension.height100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight:
                                    Radius.circular(Dimension.radius20),
                                topRight: Radius.circular(Dimension.radius20)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Dimension.width10,
                                right: Dimension.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: 'Nice fruits from Lindi'),
                                SizedBox(
                                  height: Dimension.height10,
                                ),
                                SmallText(
                                    text: ' kupata maeleo zaidi bofya hapa'),
                                SizedBox(
                                  height: Dimension.height10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconAndText(
                                      icon: Icons.circle_sharp,
                                      text: 'normal',
                                      iconColor:
                                          Color.fromARGB(255, 209, 166, 86),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconAndText(
                                      icon: Icons.location_on,
                                      text: '2.7km',
                                      iconColor:
                                          Color.fromARGB(255, 133, 195, 195),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconAndText(
                                      icon: Icons.access_time_rounded,
                                      text: '12min',
                                      iconColor:
                                          Color.fromARGB(255, 191, 110, 56),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }

  Widget _buildItemPage(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.getFoodDetail());
            },
            child: Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: Dimension.pageViewContainer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: index.isEven
                    ? const Color.fromARGB(255, 180, 216, 205)
                    : const Color.fromARGB(255, 235, 211, 79),
                image: const DecorationImage(
                    image: AssetImage('assets/images/food1.png')),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(left: 35, right: 35, bottom: 20),
              height: Dimension.pageViewTextContainer,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.white),
              child: Container(
                  padding: EdgeInsets.only(
                      left: 17, right: 15, top: Dimension.height18),
                  child: const AppColumn(
                    text: 'Burger',
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
