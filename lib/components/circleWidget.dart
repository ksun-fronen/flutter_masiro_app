import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onLongPress;
  final Widget child;

  final Color color;
  final double size;
  final Color splashColor;
  final double elevation;
  final double hoverElevation;
  final double focusElevation;
  final double highlightElevation;
  final Duration animationDuration;
  final ShapeBorder shape;
  final EdgeInsetsGeometry padding;

  const CircleButton({
    Key key,
    @required this.onPressed,
    this.onLongPress,
    this.child,
    this.color = Colors.transparent,
    this.splashColor = Colors.transparent,
    this.size,
    this.elevation = 0,
    this.hoverElevation = 0,
    this.focusElevation = 0,
    this.highlightElevation = 0,
    this.animationDuration = const Duration(),
    this.shape = const CircleBorder(),
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: this.onPressed,
        child: this.child,
        fillColor: this.color,
        splashColor: this.splashColor,
        elevation: this.elevation,
        hoverElevation: this.hoverElevation,
        focusElevation: this.focusElevation,
        highlightElevation: this.highlightElevation,
        animationDuration: this.animationDuration,
        shape: this.shape,
        padding: this.padding,
        constraints:
            BoxConstraints.expand(width: this.size, height: this.size));
  }
}

class CircleContainer extends StatelessWidget {
  final DecorationImage image;
  final EdgeInsets margin;
  final Widget child;
  final double size;

  CircleContainer({
    key,
    this.image,
    this.margin,
    this.child,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: this.image,
      ),
      child: this.child,
      margin: this.margin,
      width: this.size,
      height: this.size,
    );
  }
}
