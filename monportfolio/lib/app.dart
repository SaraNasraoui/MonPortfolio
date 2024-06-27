import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:monportfolio/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(890, 1920),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeData.light(),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MyAppController>(
//       builder: (controller) => const GetMaterialApp(
//         // theme: ThemeData.light(),
//         // darkTheme: ThemeData.dark(),
//         // themeMode: controller.appTheme,
//         home: HomePage(),
//       ),
//     );
//   }
// }

class MyAppController extends GetxController {
  // ThemeMode appTheme = ThemeMode.light;

  // void toggleThemeMode(ThemeMode newTheme) {
  //   appTheme = appTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  //   update();
  // }
}
