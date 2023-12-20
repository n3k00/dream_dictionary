import 'package:dream_dictionary/models/vo/detail_vo.dart';
import 'package:dream_dictionary/models/vo/header_vo.dart';
import 'package:dream_dictionary/networks/load_json_data.dart';
import 'package:get/get.dart';

class DiscoveryController extends GetxController {
  var isLoading = false.obs;
  var headerList = <HeaderVO>[].obs;
  var detailList = <DetailVO>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData() {
    try {
      isLoading(true);
      LoadJsonData().getHeaderList().then((list) {
        headerList.assignAll(list);
      });
    } finally {
      isLoading(false);
    }
  }

  String getTitle(String header) {
    return header.substring(2, 3);
  }

  String getSubTitle(String header) {
    return header.substring(6, header.length);
  }

  List<DetailVO> getDetailList(int id) {
    detailList.clear();
    LoadJsonData().getDetailList().then((list) {
      var filterList = list.where((detail) => id == detail.headerId);
      detailList.addAll(filterList);
    });
    return detailList;
  }
}
