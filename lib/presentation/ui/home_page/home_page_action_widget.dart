// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:project_opthalmology/presentation/ui/ui.dart';

class HomePageActionWidget extends StatelessWidget {
  const HomePageActionWidget({
    Key? key,
    this.label = 'Action',
    this.onPressed,
    this.icon = Icons.add_reaction,
  }) : super(key: key);
  final String label;
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(),
          Icon(icon, size: 80),
          label.text().pad(),
        ],
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ).pad();
  }
}
