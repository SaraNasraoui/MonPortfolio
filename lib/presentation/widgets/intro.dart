import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monportfolio/presentation/widgets/header_content.dart';
import 'package:monportfolio/presentation/widgets/skills.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/img/BG.svg',
            fit: BoxFit.fill,
            height: 840.h,
            width: 1920.w,
          ),
        ),
        const HeaderContent(),
        // Positioned(bottom: 0, child: const AboutMe()),
        Positioned(
          bottom: -40,
          right: 200.w,
          left: 200.w,
          child: const Skills(),
        ),
      ],
    );
  }
}
