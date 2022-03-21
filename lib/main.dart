import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zugyommm_youtube/binding/init_binding.dart';
import 'package:zugyommm_youtube/src/app.dart';
// import 'dart:developer';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Zugyommm Youtube",
      theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialBinding: InitBinding(),
      initialRoute: '/',
      getPages: [GetPage(name: "/", page: () => const App())],
    );
  }
}
