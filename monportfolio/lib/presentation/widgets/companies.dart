import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Companies extends StatelessWidget {
  const Companies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134.w,
      width: 524.w,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'My clients over the world',
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/img/Companylogo.svg',
                height: 40.w,
                width: 80.w,
              ),
              SvgPicture.asset(
                'assets/img/Companylogo1.svg',
                height: 40.w,
                width: 80.w,
              ),
              SvgPicture.asset(
                'assets/img/Companylogo2.svg',
                height: 40.w,
                width: 80.w,
              ),
              SvgPicture.asset(
                'assets/img/Companylogo3.svg',
                height: 40.w,
                width: 80.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
