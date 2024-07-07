import 'package:flutter/material.dart';

class NavLinks extends StatelessWidget {
  const NavLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Link(
          text: 'Home',
        ),
        Link(
          text: 'Works',
        ),
        Link(
          text: 'About',
        ),
        Link(
          text: 'Contact',
        )
      ],
    );
  }
}

class Link extends StatelessWidget {
  Link({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(text,
            style: const TextStyle(color: Colors.grey, fontSize: 10)));
  }
}
