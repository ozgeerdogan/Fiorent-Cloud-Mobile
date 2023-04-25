// ignore_for_file: unused_label

import 'package:fiorent_cloud_mobile/xelauikit/models/xela_button_models.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_button.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_color.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_text_style.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _isDark = false;
  bool secureStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGİN PAGE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 110),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo.webp"),
                      const SizedBox(
                        height: 40,
                      ),
                      XelaTextField(
                        placeholder: "User Name",
                        background: _isDark ? Colors.transparent : Colors.white,
                        borderDefaultColor:
                            _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                        placeholderColor:
                            _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                        textfieldColor:
                            _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                        borderFocusColor:
                            _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                        defaultHelperTextColor:
                            _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      XelaTextField(
                        placeholder: "Password",
                        secureField: secureStatus,
                        background: _isDark ? Colors.transparent : Colors.white,
                        borderDefaultColor:
                            _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                        placeholderColor:
                            _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                        textfieldColor:
                            _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                        borderFocusColor:
                            _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                        defaultHelperTextColor:
                            _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                        rightIcon: InkWell(
                            onTap: () {
                              setState(() {
                                secureStatus = !secureStatus;
                              });
                            },
                            child: Icon((secureStatus)? Icons.visibility_off : Icons.visibility,
                                size: 15, color: XelaColor.Gray7)),
                      ),
                      const SizedBox(height: 35),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password",
                          style: XelaTextStyle.XelaButtonMedium.apply(
                              color: Colors.blue),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: () {},
                          text: "LOGİN",
                          type: XelaButtonType.PRIMARY,
                          size: XelaButtonSize.MEDIUM,
                          background: Colors.blue,
                          foregroundColor: Colors.white,
                          autoResize: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "New User? Create Account",
                    style: XelaTextStyle.XelaSmallBody.apply(
                        color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
