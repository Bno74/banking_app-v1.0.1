import '../send_money_screen/widgets/profile_item_widget.dart';
import 'package:banking_app/core/app_export.dart';
import 'package:banking_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:banking_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banking_app/widgets/app_bar/appbar_title.dart';
import 'package:banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Money Transfer"),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgPlus,
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6),
                      onTap: () {
                        onTapPlusone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 7, top: 26, right: 7, bottom: 26),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20),
                              child: Text("Favorite",
                                  style: theme.textTheme.headlineMedium))),
                      SizedBox(
                          height: getVerticalSize(73),
                          child: ListView.separated(
                              padding: getPadding(left: 20, top: 13),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(width: getHorizontalSize(20));
                              },
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return ProfileItemWidget();
                              })),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 42),
                              child: Text("All Contact",
                                  style: theme.textTheme.headlineMedium))),
                      Container(
                          margin: getMargin(left: 20, top: 23, right: 20),
                          padding: getPadding(
                              left: 20, top: 15, right: 20, bottom: 15),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("A",
                                    style: CustomTextStyles
                                        .headlineMediumSemiBold),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Divider(
                                        color:
                                            theme.colorScheme.primaryContainer,
                                        indent: getHorizontalSize(16),
                                        endIndent: getHorizontalSize(17))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRowovalone(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgOval,
                                                  height: getSize(48),
                                                  width: getSize(48),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(24))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 2,
                                                      bottom: 4),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Angelina Druff",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Text(
                                                                "AC : 159-107-1396",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall))
                                                      ])),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  margin: getMargin(
                                                      top: 14, bottom: 14))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 16, bottom: 6),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgOval48x48,
                                              height: getSize(48),
                                              width: getSize(48),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(24))),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Angelina Lan",
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "AC : 159-107-1396",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall))
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkPrimarycontainer,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(
                                                  top: 14, bottom: 14))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(
                              left: 20, top: 24, right: 20, bottom: 5),
                          padding: getPadding(
                              left: 20, top: 15, right: 20, bottom: 15),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("B",
                                    style: CustomTextStyles
                                        .headlineMediumSemiBold),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Divider(
                                        color:
                                            theme.colorScheme.primaryContainer,
                                        indent: getHorizontalSize(16),
                                        endIndent: getHorizontalSize(17))),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgOval1,
                                              height: getSize(48),
                                              width: getSize(48),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(24))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 10, top: 4, bottom: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Belgeman",
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    Text("AC : 159-107-1396",
                                                        style: theme.textTheme
                                                            .bodySmall)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkPrimarycontainer,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(
                                                  top: 14, bottom: 14))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgOval2,
                                              height: getSize(48),
                                              width: getSize(48),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(24))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 4, bottom: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Brusly",
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    Text("AC : 159-107-1396",
                                                        style: theme.textTheme
                                                            .bodySmall)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkPrimarycontainer,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(
                                                  top: 14, bottom: 14))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16, bottom: 7),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgOval3,
                                              height: getSize(48),
                                              width: getSize(48),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(24))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 2, bottom: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Baminu",
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    Text("AC : 159-107-1396",
                                                        style: theme.textTheme
                                                            .bodySmall)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkPrimarycontainer,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(
                                                  top: 14, bottom: 14))
                                        ]))
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addPersonScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addPersonScreen.
  onTapPlusone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addPersonScreen);
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the enterMoneyScreen.
  onTapRowovalone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterMoneyScreen);
  }
}
