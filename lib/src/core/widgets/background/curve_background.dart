import 'package:expense_tracer_app/src/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CurveBackground extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;

  const CurveBackground({super.key, required this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ClipPath(
              clipper: BottomCenterCurveClipper(),
              child: Container(
                height: 300,
                decoration: BoxDecoration(color: context.theme.primaryColor),
              ),
            ),
            Expanded(child: Container(color: Colors.white)),
          ],
        ),
        Positioned.fill(
          child: Scaffold(
            appBar: appBar,
            body: body,
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}

class BottomCenterCurveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height - 60,
      size.width * 0.5,
      size.height - 30,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
