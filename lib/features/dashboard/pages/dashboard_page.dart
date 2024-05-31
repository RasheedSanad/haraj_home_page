import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haraj/core/app/router/bottom_navigation_riverpod.dart';
import 'package:haraj/core/ui/pages/ui_scaffold.dart';
import 'package:haraj/core/ui/widgets/bottom_nav_bar_widget.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int position = ref.watch(bottomNavigationProvider);

    return UiScaffold(
      body: child,
      bottomNavigationBar: BottomNavBarWidget(
        position: position,
      ),
    );
  }
}
