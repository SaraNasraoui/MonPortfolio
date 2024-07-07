import 'package:flutter/material.dart';
import 'package:monportfolio/presentation/widgets/nav_links.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NavLinks(),
        Text(
          '© 2024 Nasraoui Sarra',
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
