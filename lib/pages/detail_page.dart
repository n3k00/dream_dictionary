import 'package:dream_dictionary/models/vo/detail_vo.dart';
import 'package:dream_dictionary/resource/dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final String title = Get.arguments[0];
  final List<DetailVO> detailList = Get.arguments[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detailList.isEmpty ? "" : title),
      ),
      body: detailList.isEmpty
          ? Center(
              child: Text("သင်ရှာဖွေသောအချက်အလက် မရှိပါ"),
            )
          : ListView.separated(
              itemCount: detailList.length,
              itemBuilder: (context, index) {
                return _customListTile(index + 1, detailList[index].content);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
    );
  }

  Widget _customListTile(index, title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(MARGIN_MEDIUM),
          child: CircleAvatar(
            child: Text(index.toString()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: MARGIN_MEDIUM - 2, horizontal: MARGIN_MEDIUM),
            child: Text(
              title,
              style: TextStyle(fontSize: TEXT_REGULAR_2X, height: 1.8),
            ),
          ),
        ),
      ],
    );
  }
}
