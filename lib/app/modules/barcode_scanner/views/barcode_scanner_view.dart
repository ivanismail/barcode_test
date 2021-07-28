import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/barcode_scanner_controller.dart';

class BarcodeScannerView extends StatefulWidget {
  @override
  _BarcodeScannerViewState createState() => _BarcodeScannerViewState();
}

class _BarcodeScannerViewState extends State<BarcodeScannerView> {
  final BarcodeScannerController controller =
      Get.find<BarcodeScannerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => controller.scanBarcodeNormal(),
                    child: Text('Start barcode scan')),
                ElevatedButton(
                    onPressed: () => controller.scanQR(),
                    child: Text('Start QR scan')),
                ElevatedButton(
                    onPressed: () => controller.startBarcodeScanStream(),
                    child: Text('Start barcode scan stream')),
                GetBuilder<BarcodeScannerController>(
                  init: BarcodeScannerController(),
                  initState: (_) {},
                  builder: (_) {
                    return Text(controller.reulstScanBarcode,
                        style: TextStyle(fontSize: 20));
                  },
                )
              ])),
    );
  }
}
