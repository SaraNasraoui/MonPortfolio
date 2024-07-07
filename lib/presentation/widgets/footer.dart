import 'package:flutter/material.dart';
import 'package:monportfolio/presentation/widgets/nav_links.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: const Column(
        children: [
          Divider(
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavLinks(),
              Text(
                '© 2024 Nasraoui Sarra',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
