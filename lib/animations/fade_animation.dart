import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  Widget child;

  FadeAnimation({this.child});

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> with TickerProviderStateMixin {
  AnimationController animation;
  Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(vsync: this, duration: Duration(seconds: 3),);
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.1).animate(animation);

    animation.addListener((){
      if(animation.isCompleted){
        animation.reverse();
      }else{
        animation.forward();
      }
    });
    animation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: widget.child
    );
  }
}


// class FadeAnimation extends StatelessWidget {
//
//   final double delay;
//   final Widget child;
//
//   const FadeAnimation({this.child, this.delay});
//
//   @override
//   Widget build(BuildContext context) {
//
//     final tween = MultiTrackTween([
//       Track('opacity').add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
//       Track('translateY').add(Duration(milliseconds: 500), Tween(begin: 120.0, end: 0.0)),
//     ]);
//
//     return ControlledAnimation(
//       delay: Duration(milliseconds: (500 * delay).round()),
//       duration:  tween.duration,
//       tween: tween,
//       child: child,
//       builderWithChild: (context, child, animation) => Opacity(
//         opacity: animation['opacity'],
//         child: Transform.translate(offset: Offset(0, animation['translateY'])),
//       ),
//     );
//   }
// }