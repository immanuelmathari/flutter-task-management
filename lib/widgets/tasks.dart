import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagement/modals/task_model.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();
  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10, crossAxisSpacing: 10),itemBuilder: (context, index) => ),
    );
  }
}

Widget _buildAddTask(){
  return DottedBorder(
    child: Center(
      child: Icon(Icons.add, size: 30, color: Colors.grey.shade600,),
    ),
    borderType: BorderType.RRect,
    radius: Radius.circular(20),
    color: Colors.grey.shade600,
    strokeWidth: 2,
    dashPattern: [10,10];
  );
}

Widget _buildTask(BuildContext context, Task taskList){
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: taskList.bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment
    )
  );
}