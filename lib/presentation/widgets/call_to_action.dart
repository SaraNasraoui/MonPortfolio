import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monportfolio/presentation/widgets/my_button.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraint) {
        if (contraint.maxWidth > 800) {
          return const WebView();
        } else {
          return const MobileView();
        }
      },
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Enough Talk! Let’s Work Together.',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Roboto',
              letterSpacing: 1.2,
            )),
        const Text(
            'Do you fancy saying hi to me or do you want to get started with your project and you need my help? Feel free to contact me.'),
        MyButton(text: 'Contact With Me  -->')
      ],
    );
  }
}

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Let\'s Connect in...',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Roboto',
              letterSpacing: 1.2,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialMedia(text: 'Facebook', url: 'assets/img/facebook.svg'),
            SocialMedia(text: 'LinkedIn', url: 'assets/img/linkedin.svg'),
            SocialMedia(text: 'Instagram', url: 'assets/img/instagram.svg'),
          ],
        ),
        const Text('My Contact Information ',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Roboto',
              letterSpacing: 1.2,
            ))
      ],
    );
  }
}

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Content(), Information()],
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 200, width: 300, child: Content()),
        SizedBox(height: 100, width: 350, child: Information()),
      ],
    );
  }
}

class SocialMedia extends StatelessWidget {
  SocialMedia({
    super.key,
    required this.text,
    required this.url,
  });
  String url;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 110,
      color: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 10,
      ),
      child: Row(
        children: [
          SvgPicture.asset(url),
          Text(text),
        ],
      ),
    );
  }
}
