import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/question_controller.dart';

class QuestionView extends GetView<QuestionController> {
  const QuestionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 186, 141),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Obx(() => Text(
              controller.riddlesResult.value.data?.title ?? 'Riddle Page',
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 400,
                child: Obx(() => Text(
                      controller.riddlesResult.value.data?.question ??
                          'Loading..',
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                width: 400,
                child: Obx(() => Visibility(
                      visible: !controller.isHidden.value,
                      child: Obx(() => Text(
                            controller.riddlesResult.value.data?.answer ??
                                "Loading..",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          )),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.isHidden.value = !controller.isHidden.value;
                  },
                  child: Obx(() => Text(controller.isHidden.value
                      ? "Show Answer"
                      : "Hide Answer"))),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getRiddlesResult();
        },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
