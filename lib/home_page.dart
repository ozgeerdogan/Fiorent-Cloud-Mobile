import 'package:fiorent_cloud_mobile/xelauikit/models/xela_button_models.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_button.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_color.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_text_style.dart';
import 'package:fiorent_cloud_mobile/xelauikit/xela_textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("LOGİN PAGE"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 200, bottom: 12, left: 24, right: 24),
                    child: XelaTextField(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 24),
                    child: XelaTextField(
                      placeholder: "Password",
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
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      child: Text(
                        "Forgot Password",
                        style: XelaTextStyle.XelaButtonMedium.apply(
                            color: Colors.blue),
                      ),
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Text(
                  "New User? Create Account",
                  style: XelaTextStyle.XelaSmallBody.apply(
                      color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
