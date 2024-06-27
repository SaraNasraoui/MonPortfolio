import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestCaseStudy extends StatelessWidget {
  const LatestCaseStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1300.w,
        height: 1300.w,
        color: Colors.grey.shade50,
        child: Column(
          children: [
            Text('Latest Case Study'),
            ProjectCard(),
            SizedBox(
              height: 48.w,
            ),
            ProjectCard(),
          ],
        ));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.w,
      width: 500.w,
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
      child: Text('chnoa taw '),
    );
  }
}
