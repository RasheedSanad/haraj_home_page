import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../features/dashboard/pages/dashboard_page.dart';
import 'app_router.dart';
import 'app_router_constant.dart';

final GlobalKey<NavigatorState> _rootNavigator =
    GlobalKey<NavigatorState>(debugLabel: "root");
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: AppRouterConstant.HOME,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) {
          return DashboardPage(
            key: state.pageKey,
            child: child,
          );
        },
        routes: [
          // * HOME
          GoRoute(
            parentNavigatorKey: _shellNavigator,
            path: AppRouterConstant.HOME,
            name: AppRouterConstant.HOME,
            builder: (context, state) =>
                AppRouter.homePageRouteBuilder(context, state),
          ),
          // * FAVORIATE
          GoRoute(
            parentNavigatorKey: _shellNavigator,
            path: AppRouterConstant.FAVORIATE,
            name: AppRouterConstant.FAVORIATE,
            builder: (context, state) =>
                AppRouter.favoriatePageRouteBuilder(context, state),
          ),

          // * NOTIFICATIONS
          GoRoute(
            parentNavigatorKey: _shellNavigator,
            path: AppRouterConstant.NOTIFICATIONS,
            name: AppRouterConstant.NOTIFICATIONS,
            builder: (context, state) =>
                AppRouter.notificationsPageRouteBuilder(context, state),
          ),
          // * MESSAGES
          GoRoute(
            parentNavigatorKey: _shellNavigator,
            path: AppRouterConstant.MESSAGES,
            name: AppRouterConstant.MESSAGES,
            builder: (context, state) =>
                AppRouter.messagesPageRouteBuilder(context, state),
          ),
        ],
      ),
    ],
  );
});
