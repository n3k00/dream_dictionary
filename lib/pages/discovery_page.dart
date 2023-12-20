import 'package:dream_dictionary/controllers/discovery_controller.dart';
import 'package:dream_dictionary/models/vo/header_vo.dart';
import 'package:dream_dictionary/networks/load_json_data.dart';
import 'package:dream_dictionary/pages/detail_page.dart';
import 'package:dream_dictionary/resource/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DreamListPage extends StatelessWidget {
  DreamListPage({super.key});
  final DiscoveryController discoveryController =
      Get.put(DiscoveryController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: discoveryController.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: discoveryController.headerList.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    HeaderVO header = discoveryController.headerList[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => DetailPage(),
                          arguments: [
                            "${discoveryController.getTitle(header.title)} ${discoveryController.getSubTitle(header.title)}",
                            discoveryController.getDetailList(header.id),
                          ],
                        );
                      },
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              discoveryController.getTitle(header.title),
                              style: TextStyle(
                                fontSize: DISCOVER_TITLE_CHARACTER_SIZE,
                              ),
                            ),
                            Text(
                              discoveryController.getSubTitle(header.title),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                  ),
                ),
        ));
  }
}
