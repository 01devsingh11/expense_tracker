import 'package:flutter/material.dart';

import '../layouts/home_mobile_layout.dart';
import '../layouts/home_tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return HomeTabletLayout();
        } else {
          return HomeMobileLayout();
        }
      },
    );
  }
}
