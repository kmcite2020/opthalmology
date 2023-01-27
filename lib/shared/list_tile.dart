import 'package:flutter/material.dart';

import '../features/settings/controller.dart';

class ListTilePadded extends StatelessWidget {
  const ListTilePadded({super.key, this.leading, this.title, this.subtitle, this.trailing, this.onTap});
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(settings.padding),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
