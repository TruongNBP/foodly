import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/tab_index_controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: kOffWhite,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    unselectedIconTheme: const IconThemeData(
                      color: Colors.white38,
                    ),
                    selectedIconTheme: const IconThemeData(
                      color: kSecondary,
                    ),
                    onTap: (value) {
                      controller.setTabIndex = value;
                    },
                    currentIndex: controller.tabIndex,
                    items: [
                      BottomNavigationBarItem(
                          icon: controller.tabIndex == 0
                              ? const Icon(AntDesign.appstore1)
                              : const Icon(AntDesign.appstore_o),
                          label: 'Home'),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: 'Search'),
                      const BottomNavigationBarItem(
                          icon: Badge(
                            label: Text("1"),
                            child: Icon(FontAwesome.opencart)), label: 'Cart'),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: 'Profile'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}