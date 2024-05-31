import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haraj/core/ui/widgets/ui_text.dart';

import '../../../core/utils/colors/app_assets.dart';
import '../../../core/utils/colors/app_color.dart';

class TabCardWidget extends StatelessWidget {
  const TabCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return SizedBox(
        height: constrains.maxHeight,
        width: constrains.minWidth,
        child: Row(
          children: [
            // sart side
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 14),
                    child: UiText(
                      "طاولة طعام للبيت",
                      style: TextStyle(
                        color: AppColor.tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: FittedBox(
                                child: Icon(
                                  Icons.person,
                                  color: AppColor.onSecondary,
                                ),
                              ),
                              margin:
                                  EdgeInsetsDirectional.only(start: 14, end: 4),
                              padding: EdgeInsets.all(4),
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.secondary,
                              ),
                            ),
                            UiText("عضو 1111")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            _textWithIcon(
                                Icon(Icons.circle_outlined), "قبل 13 دقيقة"),
                            _textWithIcon(
                                Icon(Icons.location_on_outlined), "حائل"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // end side
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  AppAssets.roomImage,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _textWithIcon(Icon icon, String text) => Row(
        children: [
          icon,
          const SizedBox(
            width: 4,
          ),
          UiText(text),
        ],
      );
}
