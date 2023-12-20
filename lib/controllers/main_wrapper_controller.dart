import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainWrapperController extends GetxController {
  late PageController pageController;
  RxInt currentPage = 0.obs;

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void animatedToTab(int page) {
    currentPage.value = page;
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
