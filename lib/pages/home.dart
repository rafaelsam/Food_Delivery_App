import 'package:flutter/material.dart';
import 'package:food_app/pages/food_body.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 45, bottom: 45),
              child: Container(
                  margin: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(
                            text: 'Tanzania',
                            color: const Color.fromARGB(255, 163, 229, 199),
                          ),
                          Row(
                            children: [
                              SmallText(
                                text: 'Arusha',
                                color: Colors.black54,
                              ),
                              const Icon(Icons.arrow_drop_down_rounded)
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 163, 229, 199),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ))),
          const Expanded(child: SingleChildScrollView(child: FoodBody())),
           
        ],
      ),
    );
  }
}
