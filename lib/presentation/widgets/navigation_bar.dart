import 'package:flutter/material.dart';
import 'package:monportfolio/presentation/widgets/nav_links.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.abc,
        ),
        Spacer(),
        Expanded(
          child: NavLinks(),
          flex: 4,
        ),
        Spacer(),
      ],
    );
  }
}
