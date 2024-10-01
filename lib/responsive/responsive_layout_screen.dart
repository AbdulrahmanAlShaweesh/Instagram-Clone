
import 'package:flutter/material.dart';
import 'package:instegram_clone/utils/dimentaions.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
   final Widget webScreenLayout; 
  final Widget mobileScreenLayout; 

  const ResponsiveLayoutScreen({super.key, required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constrains) {
           if(constrains.maxWidth >= webScreenSize) {
              return webScreenLayout;
           }

           return mobileScreenLayout;
        },
    );
  }
}