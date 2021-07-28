import 'package:get/get.dart';

import 'package:test_version/app/modules/barcode_scanner/bindings/barcode_scanner_binding.dart';
import 'package:test_version/app/modules/barcode_scanner/views/barcode_scanner_view.dart';
import 'package:test_version/app/modules/create_barcode/bindings/create_barcode_binding.dart';
import 'package:test_version/app/modules/create_barcode/views/create_barcode_view.dart';
import 'package:test_version/app/modules/home/bindings/home_binding.dart';
import 'package:test_version/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BARCODE_SCANNER,
      page: () => BarcodeScannerView(),
      binding: BarcodeScannerBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_BARCODE,
      page: () => CreateBarcodeView(),
      binding: CreateBarcodeBinding(),
    ),
  ];
}
