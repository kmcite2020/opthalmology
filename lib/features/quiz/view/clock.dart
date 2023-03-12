// ignore_for_file: avoid_unnecessary_containers, dead_code

import 'package:flutter/material.dart';
import 'package:opthalmology/features/quiz/bloc.dart';
import 'package:opthalmology/features/settings/settings_bloc.dart';
import 'package:opthalmology/shared/utils.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ClockView extends ReactiveStatelessWidget {
  const ClockView({super.key});

  @override
  Widget build(BuildContext context) {
    final animation = quizManager.timeAnimaton;
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(border: Border.all(width: 2.0), borderRadius: BorderRadius.circular(settingsBloc.border)),
        child: Align(
          alignment: Alignment.topCenter,
          child: Child3(
            //Second rod
            child1: Container(
              width: 1,
              height: 100,
              color: Colors.red,
            ),
            //minute rod
            child2: Container(
              width: 2,
              height: 90,
              color: Colors.black,
            ),
            //hour rod
            child3: Container(
              width: 4,
              height: 80,
              color: Colors.black,
            ),
            builder: (secondRod, minuteRod, hourRod) => Stack(
              alignment: Alignment.bottomCenter,
              children: [
                OnAnimationBuilder(
                  listenTo: animation,
                  builder: (animate) => Transform.rotate(
                    angle: animate.fromTween(
                      (currentValue) => Tween(
                        begin: currentValue ?? 0,
                        end: (currentValue ?? 0) + 2 * 3.14 / 60,
                      ),
                    )!,
                    alignment: Alignment.bottomCenter,
                    child: secondRod,
                  ),
                ),
                OnAnimationBuilder(
                  listenTo: animation,
                  builder: (animate) => Transform.rotate(
                    angle: animate.fromTween(
                      (currentValue) => Tween(
                        begin: currentValue ?? 0,
                        end: (currentValue ?? 0) + 2 * 3.14 / 60 / 60,
                      ),
                    )!,
                    alignment: Alignment.bottomCenter,
                    child: minuteRod,
                  ),
                ),
                OnAnimationBuilder(
                  listenTo: animation,
                  builder: (animate) => Transform.rotate(
                    angle: animate.fromTween(
                      (currentValue) => Tween(
                        begin: currentValue ?? 0,
                        end: (currentValue ?? 0) + 2 * 3.14 / 60 / 60 / 60,
                      ),
                    )!,
                    alignment: Alignment.bottomCenter,
                    child: hourRod,
                  ),
                ),
              ],
            ),
          ),
        ).pad,
      ),
    ).pad;
  }
}
