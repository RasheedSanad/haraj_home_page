import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AniTestTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 700),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween<double>(begin: 3, end: 1);
        // Animation<double> sizeAnimation =
        //     Tween<double>(begin: 100.0, end: 300.0).animate(
        //         CurvedAnimation(parent: animation, curve: Interval(0.0, 0.5)));
        // Animation colorAnimation =
        //     ColorTween(begin: Colors.red, end: Colors.blue).animate(
        //         CurvedAnimation(parent: animation, curve: Interval(0.5, 1.0)));
        // final curvedAnimation = CurvedAnimation(
        //   parent: sizeAnimation,
        //   curve: curve,
        // );
        return ScaleTransition(
          // tween: tween,
          scale: animation.drive(tween),
          filterQuality: FilterQuality.medium,
          child: child,
        );
      },
    );

///  * [AnimatedBuilder], which is useful for complex animation use cases and a
///    notable exception to the naming scheme of [AnimatedWidget] subclasses.
///  * [AlignTransition], which is an animated version of [Align].
///  * [DecoratedBoxTransition], which is an animated version of [DecoratedBox].
///  * [DefaultTextStyleTransition], which is an animated version of
///    [DefaultTextStyle].
///  * [PositionedTransition], which is an animated version of [Positioned].
///  * [RelativePositionedTransition], which is an animated version of
///    [Positioned].
///  * [RotationTransition], which animates the rotation of a widget.
///  * [ScaleTransition], which animates the scale of a widget.
///  * [SizeTransition], which animates its own size.
///  * [SlideTransition], which animates the position of a widget relative to
///    its normal position.
///  * [FadeTransition], which is an animated version of [Opacity].
///  * [AnimatedModalBarrier], which is an animated version of [ModalBarrier].