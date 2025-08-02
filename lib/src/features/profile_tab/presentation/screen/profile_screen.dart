import 'package:expense_tracer_app/src/core/extension/context_extension.dart';
import 'package:expense_tracer_app/src/features/profile_tab/presentation/layouts/profile_mobile_layout.dart';
import 'package:expense_tracer_app/src/features/profile_tab/presentation/layouts/profile_tablet_layout.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const ProfileTabletLayout();
        } else {
          return ProfileMobileLayout();
        }
      },
    );
  }
}
