import '../controller/impactos_controller.dart';
import '../models/impactos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

// ignore: must_be_immutable
class ImpactosItemWidget extends StatelessWidget {
  ImpactosItemWidget(this.impactosItemModelObj);

  ImpactosItemModel impactosItemModelObj;

  var controller = Get.find<ImpactosController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 15,
        ),
        decoration: AppDecoration.outlineGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 35,
                  top: 8,
                  right: 35,
                ),
                child: ImageView(
                  svgPath: AssetConstant.imgVector1,
                  height: getVerticalSize(
                    25.00,
                  ),
                  width: getHorizontalSize(
                    20.00,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                57.00,
              ),
              margin: getMargin(
                left: 19,
                top: 8,
                right: 18,
              ),
              child: Text(
                "msg_rvores_plantad".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterBold12.copyWith(),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 19,
                top: 32,
                right: 19,
                bottom: 14,
              ),
              child: Text(
                "lbl_xxx".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterExtraBold14.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
