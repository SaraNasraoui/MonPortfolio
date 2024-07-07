import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monportfolio/presentation/widgets/my_button.dart';

class LatestCaseStudy extends StatelessWidget {
  const LatestCaseStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1300,
        height: 700,
        color: Colors.grey.shade50,
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, contraint) {
                if (contraint.maxWidth > 800) {
                  return const WebView();
                } else {
                  return const MobileView();
                }
              },
            )
          ],
        ));
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ProjectCard(
          name: 'TeamBey',
          description:
              'An online platform that simplifies access to opportunities for gaining experience in the field of computer science',
        ),
        SizedBox(height: 48.w),
        ProjectCard(
          name: 'TeamBey',
          description:
              'An online platform that simplifies access to opportunities for gaining experience in the field of computer science',
        ),
      ],
    );
  }
}

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            SizedBox(
              width: 165,
            ),
            Text(
              'Projects',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Roboto',
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectCard(
              name: 'TeamBey',
              description:
                  'An online platform that simplifies access to opportunities for gaining experience in the field of computer science',
            ),
            ProjectCard(
              name: 'TeamBey',
              description:
                  'An online platform that simplifies access to opportunities for gaining experience in the field of computer science',
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  ProjectCard({super.key, required this.name, required this.description});
  String name;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.settings_accessibility),
                  Text(name),
                  Text(description),
                  MyButton(text: 'View Project Details  -->'),
                ],
              ),
            ),
          ),
          Flexible(
            child: Image.asset(
              'assets/img/project1.png',
            ),
          ),
        ],
      ),
    );
  }
}
