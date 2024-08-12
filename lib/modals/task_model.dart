import 'package:flutter/material.dart';
import 'package:taskmanagement/widgets/constants.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  List<Map<String, dynamic>> ? desc;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.desc,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
          icon: Icons.person_rounded,
          title: 'Personal',
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          btnColor: kBlue,
          left: 5,
          done: 3,
          isLast: true),
      Task(
          icon: Icons.person_rounded,
          title: 'Personal',
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          btnColor: kBlue,
          left: 5,
          done: 3,

          desc: [{
            'time' : '10.00 AM',
            'title' : 'Create a video',
            'slot' : '9:00 Am - 10:00Am',
            'tlColor' : kRedDark,
            'bgcolor' : kRedLight
          }, {
            'time' : '10.00 AM',
            'title' : 'Watching a movie',
            'slot' : '10:00 Am - 11:00Am',
            'tlColor' : kRedDark,
            'bgcolor' : kRedLight
          },
            {
              'time' : '11.00 AM',
              'title' : 'Medi',
              'slot' : '',
              'tlColor' : kRedDark,
              'bgcolor' : kRedLight
            },
            {
              'time' : '12.00 AM',
              'title' : 'Go to the Gym',
              'slot' : '12:00 Am - 1:00Am',
              'tlColor' : kRedDark,
              'bgcolor' : kRedLight
            },
            {
              'time' : '1.00 PM',
              'title' : 'Metting with client',
              'slot' : '1:00 Pm - 3:00Pm',
              'tlColor' : kRedDark,
              'bgcolor' : kRedLight
            },
          ],
          isLast: false),
      Task(
          icon: Icons.work,
          title: 'Work',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          left: 5,
          done: 3,
          isLast: false),
      Task(
          icon: Icons.favorite_rounded,
          title: 'Health',
          bgColor: kRedLight,
          iconColor: kRedDark,
          btnColor: kdark,
          left: 5,
          done: 3,
          isLast: false),
    ];
  }
}
