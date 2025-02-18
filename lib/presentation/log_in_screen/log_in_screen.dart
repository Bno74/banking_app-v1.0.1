import 'package:banking_app/core/app_export.dart';
import 'package:banking_app/widgets/custom_elevated_button.dart';
import 'package:banking_app/widgets/custom_outlined_button.dart';
import 'package:banking_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
 

  LogInScreen({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 40, right: 27, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80),
                              width: getSize(80)),
                          Padding(
                              padding: getPadding(top: 55),
                              child: Text("Hello!",
                                  style: CustomTextStyles.displayMediumBold)),
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("Enter Your Detail Below",
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("Phone or Email",
                                      style:
                                          CustomTextStyles.bodyLargeGray700))),
                          CustomTextFormField(
                              controller: phoneController,
                              margin: getMargin(top: 5),
                              hintText: "Email",
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 25, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("Password",
                                      style:
                                          CustomTextStyles.bodyLargeGray700))),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 5),
                              hintText: "Password",
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 25, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              obscureText: true,
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          CustomElevatedButton(
                              height: getVerticalSize(72),
                              text: "Sign In",
                              margin: getMargin(top: 40),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimarySemiBold18),
                          CustomOutlinedButton(
                              text: "Sign in with Google",
                              margin: getMargin(top: 40),
                              leftIcon: Container(
                                  margin: getMargin(right: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle))),
                          Padding(
                              padding: getPadding(top: 34, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("Have Account?",
                                            style: CustomTextStyles
                                                .titleLargeBluegray700)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignup(context);
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 2),
                                            child: Text("Sign up",
                                                style: CustomTextStyles
                                                    .titleLargePrimary)))
                                  ]))
                        ])))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpScreen.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
  onTapTxtSignin(BuildContext context) {
  
    Navigator.pushNamed(context, AppRoutes.moneyExchangeScreen);
  }
   
}
