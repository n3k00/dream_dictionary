import 'package:dream_dictionary/controllers/main_wrapper_controller.dart';
import 'package:dream_dictionary/networks/load_json_data.dart';
import 'package:dream_dictionary/pages/discovery_page.dart';
import 'package:dream_dictionary/pages/home_page.dart';
import 'package:dream_dictionary/resource/dimen.dart';
import 'package:dream_dictionary/resource/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainWrapper extends StatelessWidget {
  final MainWrapperController mainWrapperController =
      Get.put(MainWrapperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITL),
      ),
      body: PageView(
        controller: mainWrapperController.pageController,
        onPageChanged: mainWrapperController.animatedToTab,
        physics: BouncingScrollPhysics(),
        children: [
          HomePage(),
          DreamListPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: MARGIN_MEDIUM_10,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bottomAppBarItem(
                  context,
                  icons: IconlyLight.home,
                  page: 0,
                  label: "Home",
                ),
                _bottomAppBarItem(
                  context,
                  icons: IconlyLight.discovery,
                  page: 1,
                  label: "Discovery",
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(
    BuildContext context, {
    required icons,
    required page,
    required label,
  }) {
    return ZoomTapAnimation(
      onTap: () => mainWrapperController.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icons,
              color: mainWrapperController.currentPage.value == page
                  ? Colors.green
                  : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: mainWrapperController.currentPage.value == page
                    ? Colors.green
                    : Colors.grey,
                fontSize: NAV_BAR_UNSELECT_TEXT_SIZE,
                fontWeight: mainWrapperController.currentPage.value == page
                    ? FontWeight.w600
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
