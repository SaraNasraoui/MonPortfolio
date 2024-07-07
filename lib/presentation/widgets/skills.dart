import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/img/flutter.png',
            height: 40,
            width: 50,
          ),
          Image.asset(
            'assets/img/python.png',
            height: 40,
            width: 50,
          ),
          Image.asset(
            'assets/img/github.png',
            height: 40,
            width: 50,
          ),
        ],
      ),
    );
  }
}
