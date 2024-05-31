import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class AnimationSlideTransistion  {
   AniRotationTransistion({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  })=>
  // final Widget child;
  // final GoRouterState state;

 
     CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimatin, child) =>
          RotationTransition(
            turns: animation,
        // opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        // alwaysIncludeSemantics: true,
        child: child,
      ),
    );
  
// }
