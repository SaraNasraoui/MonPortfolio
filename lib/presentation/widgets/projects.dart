import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monportfolio/presentation/widgets/my_button.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.08),
        color: Colors.grey.shade50,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Projects',
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 30),
              const Wrap(
                spacing: 50,
                runSpacing: 50,
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
          ),
        ));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.name, required this.description});
  final String name;
  final String description;

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
