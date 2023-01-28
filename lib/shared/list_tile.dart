import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../features/settings/bloc.dart';

class ListTilePadded extends ReactiveStatelessWidget {
  const ListTilePadded({super.key, this.leading, this.title, this.subtitle, this.trailing, this.onTap});
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(settingsBloc.padding),
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
