// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:haraj/core/ui/widgets/ui_text.dart';
import 'package:haraj/core/utils/colors/app_color.dart';

class BtnWidget extends StatelessWidget {
  final String? text;
  final IconData? iconDataEnd;
  final IconData? iconDataStart;
  final bool isBorder;
  final Color? background;
  const BtnWidget({
    super.key,
    this.text,
    this.iconDataEnd,
    this.iconDataStart,
    this.isBorder = false,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: !isBorder
            ? null
            : Border.all(
                color: AppColor.secondary,
              ),
        color: background ?? AppColor.onSecondaryContainer,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        children: [
          Visibility(
            visible: iconDataStart == null ? false : true,
            child: Icon(
              iconDataStart,
              color: AppColor.secondaryContainer,
            ),
          ),
          Visibility(
            visible: text == null ? false : true,
            child: UiText(
              "$text",
              style: TextStyle(
                color: AppColor.secondaryContainer,
              ),
            ),
          ),
          Visibility(
            visible: iconDataEnd == null ? false : true,
            child: Icon(
              iconDataEnd,
              color: AppColor.secondaryContainer,
            ),
          )
        ],
      ),
    );
  }
}
