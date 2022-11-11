import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      ),
      body: Center(
        child: Obx(() {
          return Text(
              'NewsView is ${ctr.count}, ${ctr.news.value?.articles.length}');
        }),
      ),
    );
  }
}
