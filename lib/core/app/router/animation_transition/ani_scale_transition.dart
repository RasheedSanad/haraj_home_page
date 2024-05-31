import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// come from center then expand
AniScaleTransistion({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimatin, child) {
        return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        alwaysIncludeSemantics: true,
        child: child,
      );
      },
    );
  
// }
