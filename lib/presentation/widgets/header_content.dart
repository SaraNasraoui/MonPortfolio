import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 648.w,
        height: 550.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.w,
            ),
            Image.asset(
              'assets/img/profilepic.jpg',
              height: 250.h,
              width: 250.w,
            ),
            SizedBox(
              height: 40.w,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset(
                'assets/img/MapPinLine.svg',
                height: 10,
                width: 10,
                color: Colors.white,
              ),
              const SizedBox(width: 5),
              Text(
                'Kyiv - 03148, Ukraine',
                style: TextStyle(fontSize: 15.w, color: Colors.white),
              ),
            ]),
            Text('Eleanor Scott ',
                style: TextStyle(fontSize: 30.w, color: Colors.white)),
            SizedBox(
              height: 24.w,
            ),
            Text(
                'Mauris dui ex, venenatis id bibendum interdum, ornare non est. Pellentesque vitae mauris et metus pretium consectetur.',
                style: TextStyle(fontSize: 20.w, color: Colors.grey)),
            SizedBox(
              height: 40.w,
            ),
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
                'Download Resume',
                style: TextStyle(
                  fontSize: 10.w,
                  color: const Color(0xFF00BBFF),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
