import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monportfolio/presentation/widgets/about_me.dart';
import 'package:monportfolio/presentation/widgets/companies.dart';
import 'package:monportfolio/presentation/widgets/latest_case_study.dart';
import 'package:monportfolio/presentation/widgets/navigation_bar.dart';
import 'package:monportfolio/presentation/widgets/header_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  'assets/img/BG.svg',
                  fit: BoxFit.cover,
                  height: 840.h,
                  width: 1920.w,
                ),
              ),
              Column(
                children: [
                  const Navigation(),
                  const HeaderContent(),
                  SizedBox(height: 40.w),
                  const Companies(),
                ],
              )
            ],
          ),
          AboutMe(),
          LatestCaseStudy()
        ],
      ),
    )));
  }
}
