import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram/app/utils/spaslh.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
    );
    // return FutureBuilder(
    //   future: Future.delayed(Duration(seconds: 5)),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return GetMaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         title: "Application",
    //         initialRoute: Routes.LOGIN,
    //         getPages: AppPages.routes,
    //       );
    //     } else {
    //       return SplashScreen();
    //     }
    //   },
    // );
  }
}
