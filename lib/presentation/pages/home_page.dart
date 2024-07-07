import 'package:flutter/material.dart';

import 'package:monportfolio/presentation/widgets/about_me.dart';
import 'package:monportfolio/presentation/widgets/call_to_action.dart';
import 'package:monportfolio/presentation/widgets/footer.dart';
import 'package:monportfolio/presentation/widgets/intro.dart';
import 'package:monportfolio/presentation/widgets/projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: const [
        Intro(),
        AboutMe(),
        SizedBox(height: 50),
        Projects(),
        CallToAction(),
        Footer()
      ],
    )));
  }
}
