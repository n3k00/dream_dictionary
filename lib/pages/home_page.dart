import 'package:dream_dictionary/controllers/home_controller.dart';
import 'package:dream_dictionary/networks/load_json_data.dart';
import 'package:dream_dictionary/pages/detail_page.dart';
import 'package:dream_dictionary/resource/constant.dart';
import 'package:dream_dictionary/resource/dimen.dart';
import 'package:dream_dictionary/resource/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MARGIN_MEDIUM_2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            HOME_DISCRIPTION,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: TEXT_REGULAR_3X, height: 1.8),
          ),
          SizedBox(height: 32),
          TextField(
            controller: homeController.controller,
            decoration: HOME_TEXT_FILE_STYLE.copyWith(
              hintText: "ကခ",
            ),
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              homeController.getSearchList();
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: MARGIN_MEDIUM_10,
                horizontal: MARGIN_MEDIUM_3,
              ),
            ),
            child: Text(
              "Search",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
