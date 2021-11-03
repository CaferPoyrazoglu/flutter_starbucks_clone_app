import 'package:get/get.dart';
import 'package:myapp/data/list_data.dart';

class ListController extends GetxController {
  List<ListModel> list = [];

  void onInit() {
    super.onInit();
    list = ListData().listeGetir();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
