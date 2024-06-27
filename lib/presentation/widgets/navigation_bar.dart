import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.w,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/img/Logo.svg',
            height: 40.w,
            width: 40.w,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text('Home',
                  style: TextStyle(color: Colors.grey, fontSize: 20.w))),
          TextButton(
              onPressed: () {},
              child: Text('Works',
                  style: TextStyle(color: Colors.grey, fontSize: 20.w))),
          TextButton(
              onPressed: () {},
              child: Text('About',
                  style: TextStyle(color: Colors.grey, fontSize: 20.w))),
          TextButton(
              onPressed: () {},
              child: Text('Contact',
                  style: TextStyle(color: Colors.grey, fontSize: 20.w))),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(56.r),
                side: BorderSide(color: const Color(0xFF00BBFF), width: 2.w),
              ),
            ),
            child: Text(
              'Eleaner@info.com',
              style: TextStyle(
                fontSize: 10.w,
                color: const Color(0xFF00BBFF),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
