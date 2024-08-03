import 'package:flutter/material.dart';
import 'package:taskmanagement/widgets/constants.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;
  
  Task({this.icon, this.title, this.bgColor, this.iconColor, this.btnColor, this.left, this.done, this.isLast = false});
  static List<Task> generateTasks(){
    return [
      Task(icon: Icons.person_rounded, title: 'Personal',  bgColor: kBlueLight, iconColor: kBlueDark, btnColor: kBlue, left: 5, done: 3, isLast: false),
      Task(icon: Icons.person_rounded, title: 'Personal',  bgColor: kBlueLight, iconColor: kBlueDark, btnColor: kBlue, left: 5, done: 3, isLast: false),
      Task(icon: Icons.person_rounded, title: 'Personal',  bgColor: kBlueLight, iconColor: kBlueDark, btnColor: kBlue, left: 5, done: 3, isLast: false),
      Task(icon: Icons.person_rounded, title: 'Personal',  bgColor: kBlueLight, iconColor: kBlueDark, btnColor: kBlue, left: 5, done: 3, isLast: false),
      Task(icon: Icons.person_rounded, title: 'Personal',  bgColor: kBlueLight, iconColor: kBlueDark, btnColor: kBlue, left: 5, done: 3, isLast: false),

    ];
  }
}