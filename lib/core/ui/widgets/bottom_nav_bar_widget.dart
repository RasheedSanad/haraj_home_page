import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:haraj/core/utils/colors/app_color.dart';
import 'package:haraj/features/messages/pages/messages_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../features/favoriate/pages/favoriate_page.dart';
import '../../../features/home/pages/home_page.dart';
import '../../../features/notifications/pages/notifications_page.dart';
import '../../app/router/app_router_constant.dart';
import '../../app/router/bottom_navigation_riverpod.dart';

class BottomNavBarWidget extends ConsumerWidget {
  const BottomNavBarWidget({super.key, required this.position});
  final int position;

  List<PersistentTabConfig> _tabs(int position) => [
        PersistentTabConfig(
          // navigatorConfig: NavigatorConfig(),

          screen: HomePage(),
          item: ItemConfig(
            icon: const Icon(Icons.home),
            title: "حراج",
          ),
          // onPressed: (context) {
          //   GoRouter.of(context).go(AppRouterConstant.HOME);
          // },
        ),
        PersistentTabConfig(
          // navigatorConfig: NavigatorConfig(),

          screen: const FavoriatePage(),
          item: ItemConfig(
            icon: const Icon(Icons.favorite),
            title: "المفضلة",
          ),
          // onPressed: (context) {
          //   GoRouter.of(context).go(AppRouterConstant.FAVORIATE);
          // },
        ),
        PersistentTabConfig(
          // navigatorConfig: NavigatorConfig(),

          screen: const NotificationsPage(),
          item: ItemConfig(
            icon: const Icon(Icons.notifications),
            title: "إشعارات",
          ),
          // onPressed: (context) {
          //   GoRouter.of(context).go(AppRouterConstant.NOTIFICATIONS);
          // },
        ),
        PersistentTabConfig(
          // navigatorConfig: NavigatorConfig(),
          screen: const MessagesPage(),
          item: ItemConfig(
            icon: const Icon(Icons.message),
            title: "الرسائل",
          ),

          // onPressed: (context) {
          //   GoRouter.of(context).go(AppRouterConstant.MESSAGES);
          // },
        ),
      ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int position = ref.watch(bottomNavigationProvider);

    return PersistentTabView(
      tabs: _tabs(position),
      // onTabChanged: (index) => _onTap(context, index, position, ref),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColor.onPrimary,
          size: 35,
        ),
        shape: CircleBorder(),
        backgroundColor: AppColor.primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: NavBarConfig(
          items: navBarConfig.items,
          selectedIndex: navBarConfig.selectedIndex,
          onItemSelected: navBarConfig.onItemSelected,
        ),
      ),
    );
  }

  void _onTap(
      BuildContext context, int index, int currentPosition, WidgetRef ref) {
    if (currentPosition != index) {
      ref.read(bottomNavigationProvider.notifier).setPosition(index);

      switch (index) {
        case 0:
          GoRouter.of(context).go(AppRouterConstant.HOME);
          break;
        case 1:
          GoRouter.of(context).go(AppRouterConstant.FAVORIATE);
          break;
        case 2:
          GoRouter.of(context).go(AppRouterConstant.NOTIFICATIONS);
          break;
        case 3:
          GoRouter.of(context).go(AppRouterConstant.MESSAGES);
          break;

        default:
      }
    }
  }
}
