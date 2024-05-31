import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// change opacity
CustomTransitionPage AniFadeTransistion({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 700),
      transitionsBuilder: (context, animation, secondaryAnimatin, child) =>
          FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        alwaysIncludeSemantics: true,
        child: child,
      ),
    );
  
// }
