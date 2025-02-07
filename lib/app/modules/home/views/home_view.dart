import 'package:flutter/material.dart';
import 'package:funtime/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funtime'),
        centerTitle: true,
        foregroundColor: theme.primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.DETAIL);
                },
                child: Container(
                  height: 200,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 173, 159),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Jokes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.QUOTES);
                },
                child: Container(
                  height: 200,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 173, 159),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Quotes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.QUESTION);
                },
                child: Container(
                  height: 200,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 173, 159),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Riddles",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
