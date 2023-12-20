import 'dart:convert';

import 'package:dream_dictionary/models/response_data.dart';
import 'package:dream_dictionary/models/vo/detail_vo.dart';
import 'package:dream_dictionary/models/vo/header_vo.dart';
import 'package:flutter/services.dart';

class LoadJsonData {
  Future<List<HeaderVO>> getHeaderList() async {
    final jsonData =
        await rootBundle.loadString("assets/data/dream_dictionary.json");
    ResponseData responseData = ResponseData.fromJson(jsonDecode(jsonData));
    return Future.value(responseData.headerList);
  }

  Future<List<DetailVO>> getDetailList() async {
    final jsonData =
        await rootBundle.loadString("assets/data/dream_dictionary.json");
    ResponseData responseData = ResponseData.fromJson(jsonDecode(jsonData));
    return Future.value(responseData.detailList);
  }
}
