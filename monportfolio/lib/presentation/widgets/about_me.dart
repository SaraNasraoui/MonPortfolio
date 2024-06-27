import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 128.w,
            width: 424.w,
            child: Text(
              '27+ Years of Experience',
              style: TextStyle(fontSize: 30.w),
            )),
        Column(
          children: [
            Text(
              'Hey, I’m Eleanor Scott Senior Product Designer at Google',
              style: TextStyle(fontSize: 5.w),
            ),
            Text(
              'Aenean mi mauris, porta nec ante non, interdum pulvinar risus. Mauris gravida efficitur venenatis. Praesent quis porta ex. Sed rutrum risus id urna commodo, non ullamcorper tellus aliquet. Suspendisse lobortis sem malesuada',
              style: TextStyle(fontSize: 3.w),
            ),
            Text(
              'Eleanor Scott',
              style: TextStyle(fontSize: 10.w),
            )
          ],
        )
      ],
    );
  }
}
