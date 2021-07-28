import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_version/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: Text(
                'Barcode Scanner',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Get.toNamed(Routes.BARCODE_SCANNER);
              },
            ),
            InkWell(
              child: Text(
                'Create Barcode',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Get.toNamed(Routes.CREATE_BARCODE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
