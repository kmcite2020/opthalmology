// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:opthalmology/features/settings/bloc.dart';
import 'package:opthalmology/features/test/bloc.dart';

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
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: LinearProgressIndicator(
              value: testBloc.time.toDouble() / testBloc.maxTime.toDouble(),
              minHeight: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(settingsBloc.padding),
            child: Text(
              '${testBloc.time}',
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
                    testBloc.time = localTime!;
                    testBloc.maxTime = localTime;
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
                  onPressed: () {
                    testBloc.startTimer();
                  },
                  child: Text(
                    'Start',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(settingsBloc.padding),
                child: OutlinedButton(
                  onPressed: () {
                    testBloc.timer.cancel();
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
                    testBloc.timer.cancel();
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
