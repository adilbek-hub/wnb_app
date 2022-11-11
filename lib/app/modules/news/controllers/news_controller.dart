import 'package:get/get.dart';
import 'package:step_1/app/data/models/news_model.dart';
import 'package:step_1/app/data/repisitory/news_repo.dart';

class NewsController extends GetxController {
  final newsRepo = NewsRepo();
  Rx<News?> news = Rxn();

  final count = 0.obs;
  Future<void> getNews() async {
    news.value = await newsRepo.getNews();
  }

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  void increment() => count.value++;
}
