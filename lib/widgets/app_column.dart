import 'package:flutter/material.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/icon_and_text.dart';
import 'package:food_app/widgets/small_text.dart';
import 'package:food_app/utils/dimension.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimension.font26,),
        SizedBox(
          height: Dimension.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 133, 195, 195),
                      )),
            ),
            SmallText(text: '4.5'),
            const SizedBox(
              width: 7,
            ),
            SmallText(text: '12034'),
            const SizedBox(
              width: 7,
            ),
            SmallText(text: 'comments')
          ],
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndText(
              icon: Icons.circle_sharp,
              text: 'normal',
              iconColor: Color.fromARGB(255, 209, 166, 86),
            ),
            SizedBox(
              width: 10,
            ),
            IconAndText(
              icon: Icons.location_on,
              text: '2.7km',
              iconColor: Color.fromARGB(255, 133, 195, 195),
            ),
            SizedBox(
              width: 10,
            ),
            IconAndText(
              icon: Icons.access_time_rounded,
              text: '12min',
              iconColor: Color.fromARGB(255, 191, 110, 56),
            )
          ],
        )
      ],
    );
  }
}
