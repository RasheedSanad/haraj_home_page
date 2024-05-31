import 'package:flutter/material.dart';
import 'package:haraj/core/ui/pages/ui_scaffold.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UiScaffold(
      body: Center(
        child: Text("notifications"),
      ),
    );
  }
}
