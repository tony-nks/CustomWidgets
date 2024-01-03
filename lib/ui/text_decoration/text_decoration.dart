import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InnerShadowText extends SingleChildRenderObjectWidget {
  final Color color;

  const InnerShadowText({
    this.color = Colors.blue,
    Key? key,
    Widget? child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    final renderObject = RenderInnerShadowText();
    updateRenderObject(context, renderObject);

    return renderObject;
  }

  @override
  void updateRenderObject(BuildContext context, RenderInnerShadowText renderObject) {
    renderObject
      ..color = color;

  }
}

class RenderInnerShadowText extends RenderProxyBox {
  late Color color;

  @override
  void paint(PaintingContext context, Offset offset) {
    final childBox = child;
    if (childBox == null) return;

    context.canvas
      ..restore()
      ..restore()
      ..restore();
  }
}
