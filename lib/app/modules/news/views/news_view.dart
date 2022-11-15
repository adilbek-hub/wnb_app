import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_1/app/data/models/news_model.dart';
import 'package:step_1/app/routes/app_pages.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/utils/news_card.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctr = controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsView'),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
              onPressed: (() {
                Get.toNamed(AppPages.WEATHER);
              }),
              icon: const Icon(Icons.cloud))
        ],
      ),
      body: Center(
        child: Obx(() {
          if (ctr.news.value != null) {
            final news = ctr.news.value!;
            return ListView.builder(
                itemCount: news.articles.length,
                itemBuilder: ((BuildContext context, int index) {
                  return NewsCard(news: news.articles[index]);
                }));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}
