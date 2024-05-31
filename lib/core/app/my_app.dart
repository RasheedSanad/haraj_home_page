import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router/app_router_provider.dart';

class MyApp extends ConsumerWidget {
  // singleton : single instance
  static MyApp? _instance;
  const MyApp._internal();

  factory MyApp() => _instance ?? const MyApp._internal();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ar', ''),
      ],
      locale: const Locale('ar', ''),
      routerConfig: _router,
    );
  }
}
