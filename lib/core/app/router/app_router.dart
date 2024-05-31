import 'package:flutter/material.dart';
import 'package:haraj/features/favoriate/pages/favoriate_page.dart';
import 'package:haraj/features/home/pages/home_page.dart';
import 'package:haraj/features/messages/pages/messages_page.dart';
import 'package:haraj/features/notifications/pages/notifications_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._(); // Private constructor to prevent instantiation

  // HOME
  static homePageRouteBuilder(BuildContext context, GoRouterState state) =>
      HomePage(
        key: state.pageKey,
      );
  static favoriatePageRouteBuilder(BuildContext context, GoRouterState state) =>
      FavoriatePage(
        key: state.pageKey,
      );
  //* City feature
  // CITY
  static notificationsPageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      NotificationsPage(
        key: state.pageKey,
      );
  // ADD_CITY
  static messagesPageRouteBuilder(BuildContext context, GoRouterState state) =>
      MessagesPage(
        key: state.pageKey,
      );
}
