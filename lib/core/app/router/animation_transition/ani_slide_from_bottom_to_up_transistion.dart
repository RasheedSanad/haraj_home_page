import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// start [Offset]
/// [Offset] == (0.0, 1.0) : From bottom to up
/// [Offset] == (1.0, 0.0) : From right to left
/// [Offset] == (1.0, 1.0) : From right bottom corner to left up corner
/// End [Offset] 
/// default for all [Offset.zero]
AniSlidFromBottomToUpTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 5000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
