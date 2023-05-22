import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color color;
  final double size;
  
  const AppIcons({super.key, required this.icon, required this.backgroundColor, required this.color, this.size=40});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: const Color.fromARGB(255, 230, 222, 199)
      ),
      child: Icon(icon,color: Colors.black,size: 16,),
    );
  }
}
