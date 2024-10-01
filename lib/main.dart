import 'package:flutter/material.dart';
import 'package:instegram_clone/responsive/mobile_screen_layout.dart';
import 'package:instegram_clone/responsive/responsive_layout_screen.dart';
import 'package:instegram_clone/responsive/web_screen_layout.dart';
import 'package:instegram_clone/utils/colors.dart';

void main() {
  runApp(const InstergramClone());
}

class InstergramClone extends StatelessWidget {
  const InstergramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
