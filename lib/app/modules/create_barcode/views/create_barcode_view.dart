import 'package:barcode/barcode.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/create_barcode_controller.dart';

class CreateBarcodeView extends StatefulWidget {
  @override
  _CreateBarcodeViewState createState() => _CreateBarcodeViewState();
}

class _CreateBarcodeViewState extends State<CreateBarcodeView> {
  final CreateBarcodeController controller =
      Get.find<CreateBarcodeController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // BarcodeWidget(
        //   barcode: Barcode.qrCode(
        //     errorCorrectLevel: BarcodeQRCorrectionLevel.high,
        //   ),
        //   data: 'https://pub.dev/packages/barcode_widget',
        //   width: 200,
        //   height: 200,
        // ),
        // Container(
        //   color: Colors.white,
        //   width: 60,
        //   height: 60,
        //   child: const FlutterLogo(),
        // ),
        Container(
          color: Colors.white,
          child: QrImage(
            data: "ibrahim1123",
            version: QrVersions.auto,
            size: 200.0,
          ),
        ),
      ],
    );
  }
}
