import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:haraj/core/ui/pages/ui_scaffold.dart';
import 'package:haraj/core/ui/widgets/gaps/gap_w6.dart';
import 'package:haraj/core/utils/colors/app_color.dart';
import 'package:haraj/features/home/widgets/btn_widget.dart';

import '../../../core/ui/widgets/ui_text.dart';
import '../widgets/home_tab_body_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: _kTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final _kTabPages = <Widget>[
    HomeTabBodyWidget(),
    HomeTabBodyWidget(),
    HomeTabBodyWidget(),
    HomeTabBodyWidget(),
  ];

  final _kTabs = <Tab>[
    const Tab(
      text: "الرئيسية",
    ),
    const Tab(
      text: "حراج السيارات",
    ),
    const Tab(
      text: "حراج العقار",
    ),
    const Tab(
      text: "حراج الأجهزة",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: UiScaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColor.onPrimary),
          backgroundColor: AppColor.primary,
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 23),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  color: AppColor.onSecondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColor.secondary,
                        ),
                        UiText(
                          "ابحث في حراج",
                          style: TextStyle(
                            color: AppColor.secondary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.camera,
                          color: AppColor.secondary,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.voice_chat,
                          color: AppColor.secondary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 14),
              child: Icon(
                Icons.face,
                color: AppColor.onPrimary,
              ),
            ),
          ],
          // leading: Icon(Icons.),
        ),
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 4),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.notifications_outlined,
                      color: AppColor.primary),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: AppColor.onPrimary, // <-- Button color
                    foregroundColor: AppColor.primary, // <-- Splash color
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 25),
              child: UiText(
                "قصص",
                style: TextStyle(
                  color: AppColor.primary,
                ),
              ),
            ),
            TabBar(
              tabs: _kTabs,
              controller: _tabController,
              labelColor: AppColor.primary,
              // dividerColor: AppColor.primary,
              // overlayColor: AppColor.primary,
              indicatorColor: AppColor.primary,
              unselectedLabelColor: AppColor.tertiaryContainer,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BtnWidget(
                    iconDataEnd: Icons.keyboard_arrow_down_outlined,
                    text: "كل المناطق",
                    background: Colors.white,
                    isBorder: true,
                  ),
                  GapW6(),
                  BtnWidget(
                    iconDataStart: Icons.filter_alt_sharp,
                    text: "تصفية",
                  ),
                  GapW6(),
                  BtnWidget(
                    iconDataStart: Icons.map,
                  ),
                  GapW6(),
                  BtnWidget(
                    text: "القريب",
                  ),
                  GapW6(),
                  BtnWidget(
                    iconDataStart: Icons.dashboard,
                  ),
                ],
              ),
            ),
            const Divider(),
            _kTabPages[_tabController.index],
          ],
        ),
      ),
    );
  }
}
