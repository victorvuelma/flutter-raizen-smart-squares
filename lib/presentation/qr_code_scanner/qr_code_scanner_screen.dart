import 'package:lucide_icons/lucide_icons.dart';

import 'package:mobile_scanner/mobile_scanner.dart';

import 'controller/qr_code_scanner_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class QRCodeScannerScreen extends GetWidget<QRCodeScannerController> {
  const QRCodeScannerScreen({
    super.key,
  });

  void onTapGoBack() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(
            allowDuplicates: false,
            controller: controller.cameraController,
            onDetect: (barcode, args) {
              if (barcode.type == BarcodeType.text &&
                  barcode.rawValue?.isNotEmpty == true) {
                final String code = barcode.rawValue!;
              }
            },
          ),
          Positioned(
            top: 32,
            left: 8,
            child: IconButton(
              onPressed: onTapGoBack,
              icon: const Icon(
                LucideIcons.chevronLeft,
                color: ColorConstant.light00,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 128, left: 64, right: 64),
              child: Text(
                "msg_qrcode_read_how".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtMediumTitle.copyWith(
                  color: ColorConstant.light00,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                border: Border.all(
                  color: ColorConstant.light00.withOpacity(0.5),
                  width: 4,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
