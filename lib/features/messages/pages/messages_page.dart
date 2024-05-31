import 'package:flutter/material.dart';
import 'package:haraj/core/ui/pages/ui_scaffold.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UiScaffold(
      body: Center(
        child: Text("messages"),
      ),
    );
  }
}
