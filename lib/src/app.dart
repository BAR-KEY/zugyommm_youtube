import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zugyommm_youtube/src/controller/app_controller.dart';
import 'package:zugyommm_youtube/src/pages/explore.dart';
import 'package:zugyommm_youtube/src/pages/home.dart';
import 'package:zugyommm_youtube/src/pages/library.dart';
import 'package:zugyommm_youtube/src/pages/subscribe.dart';

class App extends GetView<Appcontroller> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() {
          switch (RouteName.values[controller.currentIndex.value]) {
            case RouteName.Home:
              return const Home();
              break;
            case RouteName.Explore:
              return const Explore();

              break;
            case RouteName.Add:
              break;
            case RouteName.Subs:
              return const Subscribe();

              break;
            case RouteName.Library:
              return const Library();

              break;
          }
        }),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: true,
            selectedItemColor: Colors.black,
            onTap: controller.changePageIndex,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
                  activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
                  label: "홈"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/svg/icons/compass_off.svg",
                    width: 22,
                  ),
                  activeIcon: SvgPicture.asset(
                      "assets/svg/icons/compass_on.svg",
                      width: 22),
                  label: "탐색"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(
                      "assets/svg/icons/plus.svg",
                      width: 35,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/svg/icons/subs_off.svg",
                    width: 22,
                  ),
                  activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg",
                      width: 22),
                  label: "구독"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/svg/icons/library_off.svg",
                    width: 22,
                  ),
                  activeIcon: SvgPicture.asset(
                      "assets/svg/icons/library_on.svg",
                      width: 22),
                  label: "보관함"),
            ],
          ),
        ));
  }
}
