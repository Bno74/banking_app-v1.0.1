import 'package:banking_app/core/app_export.dart';
import 'package:flutter/material.dart';

class RequestSentScreen extends StatelessWidget {
  const RequestSentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getSize(80),
                width: getSize(80),
                padding: getPadding(
                  left: 29,
                  top: 31,
                  right: 29,
                  bottom: 31,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder42,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmarkGray700,
                  height: getVerticalSize(16),
                  width: getHorizontalSize(22),
                  alignment: Alignment.center,
                ),
              ),
              Container(
                width: getHorizontalSize(188),
                margin: getMargin(
                  top: 18,
                ),
                child: Text(
                  "Request Sent Successfully ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.33,
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
