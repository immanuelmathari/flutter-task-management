import 'package:flutter/material.dart';
import 'package:taskmanagement/modals/task_model.dart';
import 'package:taskmanagement/widgets/task_timeline.dart';
import 'package:taskmanagement/widgets/task_title.dart';
import 'datePicker.dart';

class DetailPage extends StatelessWidget {

  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context){
    // return const Placeholder();
    final detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        // to hold some files
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [DatePicker(), TaskTitle()]
              )
            )
          ),
          detailList == null ? SliverFillRemaining(
            child: Container(
              color: Colors.white,
              height: 200,
              child: Center(
                  child: Text('No tasks yet', style: TextStyle(fontSize: 20, color: Colors.grey.shade500))
              )
            )
          ) : SliverList(delegate: SliverChildBuilderDelegate((context, index) => TaskTimeline(detailList[index]), childCount: detailList.length ))
        ]
      )
    );
  }

  Widget _buildAppBar(BuildContext context){
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
        iconSize: 20,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
          iconSize: 20
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${task.title}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
            ),
            const SizedBox(height: 5),
            Text(
              'You have ${task.left} tasks left to do',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              )
            )
          ]
        )
      )
    );
  }
}