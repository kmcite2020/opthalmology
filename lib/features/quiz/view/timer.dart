// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:opthalmology/features/quiz/bloc.dart';
import 'package:opthalmology/features/settings/settings_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class TimerProgressView extends ReactiveStatelessWidget {
  TimerProgressView({super.key});
  final start = true.inj(autoDisposeWhenNotUsed: false);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => start.toggle(),
      child: AnimatedContainer(
        duration: 3.seconds,
        child: OnAnimationBuilder(
          listenTo: quizManager.timeAnimaton,
          builder: (Animate animate) {
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(settingsBloc.padding),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(settingsBloc.border),
                    child: LinearProgressIndicator(value: animate<double>(start.state ? 0 : 1), minHeight: 40),
                  ),
                ),
                const Text('time', textScaleFactor: 2)
              ],
            );
          },
        ),
      ),
    );
  }
}

class TimerView extends StatefulWidget {
  const TimerView({super.key});

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          // buildProgressBar(time, maxTime),
          // Padding(
          //   padding: EdgeInsets.all(settingsBloc.padding),
          //   child: LinearProgressIndicator(
          //     value: testBloc.time.toDouble() / testBloc.maxTime.toDouble(),
          //     minHeight: 20,
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: Text(
              '${quizManager.timeAnimaton.controller?.value}',
              textScaleFactor: 5,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: Column(
              children: [
                DropdownButtonFormField(
                  items: List.generate(20, (index) => index * 5)
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e.toString(),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (localTime) {
                    // testBloc.time = localTime!;
                    // testBloc.maxTime = localTime;
                  },
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(settingsBloc.padding),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Start',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(settingsBloc.padding),
                child: OutlinedButton(
                  onPressed: () {
                    // testBloc.timer.cancel();
                  },
                  child: Text(
                    'Stop',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(settingsBloc.padding),
                child: TextButton(
                  onPressed: () {
                    // testBloc.timer.cancel();
                  },
                  child: Text(
                    'Stop',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
