// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../utils/colors/app_color.dart';

class UiScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  const UiScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primary,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
          drawer: drawer,
        ),
      ),
    );
  }
}
