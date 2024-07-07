import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(color: Color(0xFF00BBFF), width: 1),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.file_download_outlined,
              color: Color(0xFF00BBFF),
              size: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xFF00BBFF),
              ),
            ),
          ],
        ));
  }
}
