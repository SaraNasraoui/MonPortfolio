import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monportfolio/presentation/widgets/my_button.dart';
import 'package:monportfolio/presentation/widgets/navigation_bar.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: 648.w,
          height: 1220.h,
          child: LayoutBuilder(
            builder: (context, contraint) {
              if (contraint.maxWidth > 600) {
                return const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Navigation(),
                    SizedBox(
                      height: 50,
                    ),
                    WebView(),
                  ],
                );
              } else {
                return const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Navigation(),
                    MobileView(),
                  ],
                );
              }
            },
          )),
    );
  }
}

class Profile extends StatelessWidget {
  Profile({super.key, required this.webOrMobileSizeImage});
  double? webOrMobileSizeImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: webOrMobileSizeImage,
          backgroundImage: const AssetImage('assets/img/profilePic.jpeg'),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.location_on_outlined,
            size: 15,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            'Monastir , Tunisia',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
        ]),
        const SizedBox(
          height: 5,
        ),
        const Text('Nasraoui Sarra ',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        MyButton(
          text: 'Download Resume',
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  Description({super.key, required this.webOrMobileWidth});

  double? webOrMobileWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: webOrMobileWidth,
      child: Column(
        children: [
          const Text(
            'Passionate Flutter Developer prioritizing user-centric solutions and performance optimization. Focused on creating clean, robust code with exceptional security. Achieves compatibility targets while meeting and exceeding customer demands',
            style: TextStyle(fontSize: 13, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF00BBFF),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 15,
                ),
                Text(
                  'sarranasraoui166@gmail.com',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        Profile(
          webOrMobileSizeImage: 60,
        ),
        Description(
          webOrMobileWidth: null,
        ),
      ],
    );
  }
}

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Profile(
          webOrMobileSizeImage: 120,
        ),
        const SizedBox(
          width: 70,
        ),
        Flexible(
            child: Description(
          webOrMobileWidth: 600,
        )),
      ],
    );
  }
}
