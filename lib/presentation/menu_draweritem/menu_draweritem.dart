import 'package:banking_app/core/app_export.dart';
import 'package:banking_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MenuDraweritem extends StatelessWidget {
  const MenuDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: getHorizontalSize(335),
            padding: getPadding(left: 24, top: 77, right: 24, bottom: 77),
            decoration: AppDecoration.bg,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse108,
                      height: getSize(85),
                      width: getSize(85),
                      radius: BorderRadius.circular(getHorizontalSize(42))),
                  Padding(
                      padding: getPadding(top: 13),
                      child: Text("Suzane Jobs",
                          style: CustomTextStyles.headlineLargeGray900)),
                  Padding(
                      padding: getPadding(top: 6),
                      child: Text("user@gmail.com",
                          style: CustomTextStyles.bodyLargeGray700)),
                  CustomElevatedButton(
                      height: getVerticalSize(25),
                      width: getHorizontalSize(111),
                      text: "Edit Profile",
                      margin: getMargin(left: 2, top: 43),
                      leftIcon: Container(
                          margin: getMargin(right: 17),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgUser)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1,
                      onTap: () {
                        onTapEditprofile(context);
                      }),
                  CustomElevatedButton(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(110),
                      text: "History (8)",
                      margin: getMargin(top: 44),
                      leftIcon: Container(
                          margin: getMargin(right: 15),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgClock)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumSFProDisplay,
                      onTap: () {
                        onTapHistory8(context);
                      }),
                  CustomElevatedButton(
                      height: getVerticalSize(25),
                      width: getHorizontalSize(188),
                      text: "Notifications Settings",
                      margin: getMargin(top: 43),
                      leftIcon: Container(
                          margin: getMargin(right: 15),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSettingsGray900)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1,
                      onTap: () {
                        onTapNotifications(context);
                      }),
                  Padding(
                      padding: getPadding(top: 41, bottom: 41),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                                height: getVerticalSize(15),
                                width: getHorizontalSize(17),
                                margin: getMargin(top: 3, bottom: 6)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("Share App",
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_1))
                          ]))
                ])));
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the editProfileScreen.
  onTapEditprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the historyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the historyScreen.
  onTapHistory8(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.historyScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationsScreen.
  onTapNotifications(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
