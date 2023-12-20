import 'package:dream_dictionary/models/vo/detail_vo.dart';
import 'package:dream_dictionary/networks/load_json_data.dart';
import 'package:dream_dictionary/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController controller;
  var detailList = <DetailVO>[].obs;

  void getSearchList() {
    if (!controller.text.isEmpty) {
      List<DetailVO> filterList = [];
      LoadJsonData().getDetailList().then((list) {
        filterList = list.where((detail) {
          return detail.content.contains(controller.text);
        }).toList();
        Get.to(() => DetailPage(), arguments: [
          controller.text,
          filterList,
        ]);
      });
    } else {
      Get.defaultDialog(
        content: Text("ရှာချင်တာရိုက်ထည့်ပါ"),
        onConfirm: () {
          Get.back();
        },
      );
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controller = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    controller.dispose();
  }
}
