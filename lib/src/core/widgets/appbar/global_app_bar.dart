import 'package:expense_tracer_app/src/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

 class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;
  final bool? centreTitle;
  final Widget? leadingWidget;
  final Color? backgroundColor;
  const GlobalAppBar({
    super.key,
    required this.title,
    this.action,
    this.centreTitle,
    this.leadingWidget,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),

      actions: action,
      centerTitle: centreTitle,
      leading: leadingWidget,
      backgroundColor: backgroundColor ?? context.theme.primaryColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
